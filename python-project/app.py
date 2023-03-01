from flask import Flask
from neo4j import GraphDatabase

app = Flask(__name__)

driver = GraphDatabase.driver('bolt://db', auth=('neo4j', 'neo4j123'))

@app.route('/')
def index():
    with driver.session() as session:
        result = session.run('MATCH (n) RETURN count(n) AS node_count')
        node_count = result.single()['node_count']
        return f'There are {node_count} nodes in the database.'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
