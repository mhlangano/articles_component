public with sharing class Articles_Controller {

    @AuraEnabled
    public static List<KnowledgeArticleVersion>  getArticles() {
        
        return [SELECT Title, OwnerId, Owner.Name, PublishStatus, Summary, UrlName, VersionNumber FROM KnowledgeArticleVersion WHERE PublishStatus=:'Online' AND language ='en_US'];
    }
}