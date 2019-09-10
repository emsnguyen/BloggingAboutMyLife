package utils;

/**
 *
 * @author lenovo
 */
public class HtmlHelper {
    public static String generateHyperlink(int page, String displayText) {
        String link = "<a href=\"overview?page=" + page
                + "\">" + displayText + "</a>";
        return link;
    }
    public static String paging(int totalPage, int pageGap, int currentPage) {
        String result = "";
        if (currentPage > pageGap+1) {
            result += generateHyperlink(1, "First");
        }
        for (int i = Math.max(currentPage-pageGap, 1); i < currentPage; i++) {
            result += generateHyperlink(i, "" + i);
        }
        result += "<a class=\"currentPage\">"+currentPage+"</a>";
        for (int i = currentPage+1; i <= Math.min(currentPage+pageGap, totalPage); i++) {
            result += generateHyperlink(i, "" + i);
        }
        if (currentPage + pageGap < totalPage) {
            result += generateHyperlink(totalPage, "Last");
        }
        return result;
    }
    
}
