# 1: Crear aplicación en http://127.0.0.1:8000/o/applications/register/ y exportar valores

# Name: web-app
export CLIENT_ID=tbytTdA9yaLJGkGNvXp5ACGTi4isdppnUocZVpDj
export CLIENT_SECRET=HvxIcOADxAFHbRhPjLBoNsKa9qOujz6cEZwYaKsWGtbLAwo1xqWtxBRd3GkU2D86BCuN5YnTUjvt8vzwa0Q9ROFvszSQjr7ByWG7RN82qJAqFh73T3k7bgFpKSZWhvRM
# Client type: Confidential
# Authorization grant type: Authorization code
# Redirect uris: http://127.0.0.1:8000/noexist/callback

# 2 ir a la url en el navegador para conceder permisos
echo "http://127.0.0.1:8000/o/authorize/?response_type=code&client_id=${CLIENT_ID}&redirect_uri=http://127.0.0.1:8000/noexist/callback"

# 3. Obtengo un código
export CODE=4dXoxSuuqVJl4UHDx1UVTFqs0FlHZ9

# 4. Obtengo token de acceso
# curl -X POST \
#     -H "Cache-Control: no-cache" \
#     -H "Content-Type: application/x-www-form-urlencoded" \
#     "http://127.0.0.1:8000/o/token/" \
#     -d "client_id=${CLIENT_ID}" \
#     -d "client_secret=${CLIENT_SECRET}" \
#     -d "code=${CODE}" \
#     -d "redirect_uri=http://127.0.0.1:8000/noexist/callback" \
#     -d "grant_type=authorization_code"


# 5. Acceso a los recursos
# export TOKEN=mrYzo3FBMDBH6KZ2DrW07bAV5Mq0uI

# curl \
#    -H "Authorization: Bearer ${TOKEN}" \
#    -X GET http://localhost:8000/resource
