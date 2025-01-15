import os
import json
import requests

def lambda_handler(event, context):
    # Retrieve API keys and endpoints from environment variables
    openai_api_key = os.getenv('OPENAI_API_KEY')
    openai_endpoint = os.getenv('OPENAI_ENDPOINT')
    document_intelligence_api_key = os.getenv('DOCUMENT_INTELLIGENCE_API_KEY')
    document_intelligence_endpoint = os.getenv('DOCUMENT_INTELLIGENCE_ENDPOINT')

    # Ensure all required environment variables are set
    if not all([openai_api_key, openai_endpoint, document_intelligence_api_key, document_intelligence_endpoint]):
        return {
            'statusCode': 400,
            'body': json.dumps('Missing one or more environment variables.')
        }

    # Define headers for API requests
    headers_openai = {
        'Content-Type': 'application/json',
        'Authorization': f'Bearer {openai_api_key}'
    }

    headers_doc_intelligence = {
        'Content-Type': 'application/json',
        'Ocp-Apim-Subscription-Key': document_intelligence_api_key
    }

    # Example payloads
    openai_payload = {
        'prompt': 'Hello, how are you?',
        'max_tokens': 5
    }

    document_intelligence_payload = {
        'url': 'https://example.com/sample-document.pdf'
    }

    # Test OpenAI Endpoint
    try:
        openai_response = requests.post(f"{openai_endpoint}/v1/engines/text-davinci-003/completions",
                                        headers=headers_openai, json=openai_payload)
        openai_result = openai_response.json()
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps(f"Error accessing OpenAI endpoint: {str(e)}")
        }

    # Test Document Intelligence Endpoint
    try:
        document_intelligence_response = requests.post(f"{document_intelligence_endpoint}/formrecognizer/v2.1-preview.3/layout/analyze",
                                                       headers=headers_doc_intelligence, json=document_intelligence_payload)
        document_intelligence_result = document_intelligence_response.json()
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps(f"Error accessing Document Intelligence endpoint: {str(e)}")
        }

    return {
        'statusCode': 200,
        'body': json.dumps({
            'openai_result': openai_result,
            'document_intelligence_result': document_intelligence_result
        })
    }
