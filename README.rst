快速创建flask-zs项目
========================


- `codeif/flask-zs <https://github.com/codeif/flask-zs>`_

- `Creating a repository from a template <https://help.github.com/en/articles/creating-a-repository-from-a-template>`_



User接口
-----------

User List http://localhost:5000/users/

Add User

    .. code-block:: sh

        curl -X POST \
        http://localhost:5000/users/ \
        -H 'content-type: application/json' \
        -d '{
            "name": "Five",
            "phone": "13800138000"
        }'