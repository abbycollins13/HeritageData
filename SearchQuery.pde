
public int size;

public String apikey = "87ac65635d4d45203a6817bbc97f8bbb";

public class SearchQuery {
  
  public SearchQuery(String searchTerm) {
    search(searchTerm);
  }

  public JSONArray search(String title) {
    String queryURL = "http://api.dp.la/v2/items?sourceResource.title=(Syria+OR+Scotland+OR+Germany)+AND+"+title+"&fields=sourceResource.subject,id&page_size=500&api_key=";
    queryURL+=apikey;
    

    JSONObject jsonObject = loadJSONObject(queryURL);

    JSONArray results = jsonObject.getJSONArray("docs");  
    
    parse(results);
    return results;
  }
  
  public void parse(JSONArray value){
    
    size = value.size();
  }
  
  public int getSize(){
    return size;
  }
  
}
