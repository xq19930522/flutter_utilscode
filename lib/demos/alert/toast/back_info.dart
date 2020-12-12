class BackInfo {
    String dialog;
    List<Issue> issueList;
    String newestIssueType;
    String nextPageUrl;
    int nextPublishTime;

    BackInfo({this.dialog, this.issueList, this.newestIssueType, this.nextPageUrl, this.nextPublishTime});

    factory BackInfo.fromJson(Map<String, dynamic> json) {
        return BackInfo(
            dialog: json['dialog'] != null ? (json['dialog']) : null,
            issueList: json['issueList'] != null ? (json['issueList'] as List).map((i) => Issue.fromJson(i)).toList() : null, 
            newestIssueType: json['newestIssueType'], 
            nextPageUrl: json['nextPageUrl'], 
            nextPublishTime: json['nextPublishTime'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['newestIssueType'] = this.newestIssueType;
        data['nextPageUrl'] = this.nextPageUrl;
        data['nextPublishTime'] = this.nextPublishTime;
        if (this.dialog != null) {
            data['dialog'] = this.dialog;
        }
        if (this.issueList != null) {
            data['issueList'] = this.issueList..toList();
        }
        return data;
    }
}

class Issue {
    int count;
    int date;
    List<Item> itemList;
    int publishTime;
    int releaseTime;
    String type;

    Issue({this.count, this.date, this.itemList, this.publishTime, this.releaseTime, this.type});

    factory Issue.fromJson(Map<String, dynamic> json) {
        return Issue(
            count: json['count'], 
            date: json['date'], 
            itemList: json['itemList'] != null ? (json['itemList'] as List).map((i) => Item.fromJson(i)).toList() : null, 
            publishTime: json['publishTime'], 
            releaseTime: json['releaseTime'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['count'] = this.count;
        data['date'] = this.date;
        data['publishTime'] = this.publishTime;
        data['releaseTime'] = this.releaseTime;
        data['type'] = this.type;
        if (this.itemList != null) {
            data['itemList'] = this.itemList..toList();
        }
        return data;
    }
}

class Item {
    Data data;
    int adIndex;
    int id;
    Object tag;
    Object trackingData;
    String type;

    Item({this.data, this.adIndex, this.id, this.tag, this.trackingData, this.type});

    factory Item.fromJson(Map<String, dynamic> json) {
        return Item(
            data: json['data'] != null ? Data.fromJson(json['data']) : null, 
            adIndex: json['adIndex'], 
            id: json['id'], 
            tag: json['tag'] != null ? (json['tag']) : null, 
            trackingData: json['trackingData'] != null ? (json['trackingData']) : null, 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['adIndex'] = this.adIndex;
        data['id'] = this.id;
        data['type'] = this.type;
        if (this.data != null) {
            data['data'] = this.data;
        }
        if (this.tag != null) {
            data['tag'] = this.tag;
        }
        if (this.trackingData != null) {
            data['trackingData'] = this.trackingData;
        }
        return data;
    }
}

class Data {
    bool ad;
    List<Object> adTrack;
    Author author;
    Object brandWebsiteInfo;
    Object campaign;
    String category;
    bool collected;
    Consumption consumption;
    Cover cover;
    String dataType;
    int date;
    String description;
    String descriptionEditor;
    Object descriptionPgc;
    int duration;
    Object favoriteAdTrack;
    int id;
    int idx;
    bool ifLimitVideo;
    Object label;
    List<Object> labelList;
    Object lastViewTime;
    String library;
    List<PlayInfo> playInfo;
    String playUrl;
    bool played;
    Object playlists;
    Object promotion;
    Provider provider;
    bool reallyCollected;
    Object recallSource;
    Object recall_source;
    int releaseTime;
    Object remark;
    String resourceType;
    int searchWeight;
    Object shareAdTrack;
    Object slogan;
    Object src;
    List<Object> subtitles;
    List<Tag> tags;
    Object thumbPlayUrl;
    String title;
    Object titlePgc;
    String type;
    VideoPosterBean videoPosterBean;
    Object waterMarks;
    Object webAdTrack;
    WebUrl webUrl;

    Data({this.ad, this.adTrack, this.author, this.brandWebsiteInfo, this.campaign, this.category, this.collected, this.consumption, this.cover, this.dataType, this.date, this.description, this.descriptionEditor, this.descriptionPgc, this.duration, this.favoriteAdTrack, this.id, this.idx, this.ifLimitVideo, this.label, this.labelList, this.lastViewTime, this.library, this.playInfo, this.playUrl, this.played, this.playlists, this.promotion, this.provider, this.reallyCollected, this.recallSource, this.recall_source, this.releaseTime, this.remark, this.resourceType, this.searchWeight, this.shareAdTrack, this.slogan, this.src, this.subtitles, this.tags, this.thumbPlayUrl, this.title, this.titlePgc, this.type, this.videoPosterBean, this.waterMarks, this.webAdTrack, this.webUrl});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            ad: json['ad'], 
            adTrack: json['adTrack'] != null ? (json['adTrack'] as List).map((i) => (i)).toList() : null, 
            author: json['author'] != null ? Author.fromJson(json['author']) : null, 
            brandWebsiteInfo: json['brandWebsiteInfo'] != null ? (json['brandWebsiteInfo']) : null, 
            campaign: json['campaign'] != null ? (json['campaign']) : null, 
            category: json['category'], 
            collected: json['collected'], 
            consumption: json['consumption'] != null ? Consumption.fromJson(json['consumption']) : null, 
            cover: json['cover'] != null ? Cover.fromJson(json['cover']) : null, 
            dataType: json['dataType'], 
            date: json['date'], 
            description: json['description'], 
            descriptionEditor: json['descriptionEditor'], 
            descriptionPgc: json['descriptionPgc'] != null ? (json['descriptionPgc']) : null, 
            duration: json['duration'], 
            favoriteAdTrack: json['favoriteAdTrack'] != null ? (json['favoriteAdTrack']) : null, 
            id: json['id'], 
            idx: json['idx'], 
            ifLimitVideo: json['ifLimitVideo'], 
            label: json['label'] != null ? (json['label']) : null, 
            labelList: json['labelList'] != null ? (json['labelList'] as List).map((i) => (i)).toList() : null, 
            lastViewTime: json['lastViewTime'] != null ? (json['lastViewTime']) : null, 
            library: json['library'], 
            playInfo: json['playInfo'] != null ? (json['playInfo'] as List).map((i) => PlayInfo.fromJson(i)).toList() : null, 
            playUrl: json['playUrl'], 
            played: json['played'], 
            playlists: json['playlists'] != null ? (json['playlists']) : null, 
            promotion: json['promotion'] != null ? (json['promotion']) : null, 
            provider: json['provider'] != null ? Provider.fromJson(json['provider']) : null, 
            reallyCollected: json['reallyCollected'], 
            recallSource: json['recallSource'] != null ? (json['recallSource']) : null, 
            recall_source: json['recall_source'] != null ? (json['recall_source']) : null, 
            releaseTime: json['releaseTime'], 
            remark: json['remark'] != null ? (json['remark']) : null, 
            resourceType: json['resourceType'], 
            searchWeight: json['searchWeight'], 
            shareAdTrack: json['shareAdTrack'] != null ? (json['shareAdTrack']) : null, 
            slogan: json['slogan'] != null ? (json['slogan']) : null, 
            src: json['src'] != null ? (json['src']) : null, 
            subtitles: json['subtitles'] != null ? (json['subtitles'] as List).map((i) => (i)).toList() : null, 
            tags: json['tags'] != null ? (json['tags'] as List).map((i) => Tag.fromJson(i)).toList() : null, 
            thumbPlayUrl: json['thumbPlayUrl'] != null ? (json['thumbPlayUrl']) : null, 
            title: json['title'], 
            titlePgc: json['titlePgc'] != null ? (json['titlePgc']) : null, 
            type: json['type'], 
            videoPosterBean: json['videoPosterBean'] != null ? VideoPosterBean.fromJson(json['videoPosterBean']) : null, 
            waterMarks: json['waterMarks'] != null ? (json['waterMarks']) : null, 
            webAdTrack: json['webAdTrack'] != null ? (json['webAdTrack']) : null, 
            webUrl: json['webUrl'] != null ? WebUrl.fromJson(json['webUrl']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['ad'] = this.ad;
        data['category'] = this.category;
        data['collected'] = this.collected;
        data['dataType'] = this.dataType;
        data['date'] = this.date;
        data['description'] = this.description;
        data['descriptionEditor'] = this.descriptionEditor;
        data['duration'] = this.duration;
        data['id'] = this.id;
        data['idx'] = this.idx;
        data['ifLimitVideo'] = this.ifLimitVideo;
        data['library'] = this.library;
        data['playUrl'] = this.playUrl;
        data['played'] = this.played;
        data['reallyCollected'] = this.reallyCollected;
        data['releaseTime'] = this.releaseTime;
        data['resourceType'] = this.resourceType;
        data['searchWeight'] = this.searchWeight;
        data['title'] = this.title;
        data['type'] = this.type;
        if (this.adTrack != null) {
            data['adTrack'] = this.adTrack.toList();
        }
        if (this.author != null) {
            data['author'] = this.author;
        }
        if (this.brandWebsiteInfo != null) {
            data['brandWebsiteInfo'] = this.brandWebsiteInfo;
        }
        if (this.campaign != null) {
            data['campaign'] = this.campaign;
        }
        if (this.consumption != null) {
            data['consumption'] = this.consumption;
        }
        if (this.cover != null) {
            data['cover'] = this.cover;
        }
        if (this.descriptionPgc != null) {
            data['descriptionPgc'] = this.descriptionPgc;
        }
        if (this.favoriteAdTrack != null) {
            data['favoriteAdTrack'] = this.favoriteAdTrack;
        }
        if (this.label != null) {
            data['label'] = this.label;
        }
        if (this.labelList != null) {
            data['labelList'] = this.labelList.toList();
        }
        if (this.lastViewTime != null) {
            data['lastViewTime'] = this.lastViewTime;
        }
        if (this.playInfo != null) {
            data['playInfo'] = this.playInfo..toList();
        }
        if (this.playlists != null) {
            data['playlists'] = this.playlists;
        }
        if (this.promotion != null) {
            data['promotion'] = this.promotion;
        }
        if (this.provider != null) {
            data['provider'] = this.provider;
        }
        if (this.recallSource != null) {
            data['recallSource'] = this.recallSource;
        }
        if (this.recall_source != null) {
            data['recall_source'] = this.recall_source;
        }
        if (this.remark != null) {
            data['remark'] = this.remark;
        }
        if (this.shareAdTrack != null) {
            data['shareAdTrack'] = this.shareAdTrack;
        }
        if (this.slogan != null) {
            data['slogan'] = this.slogan;
        }
        if (this.src != null) {
            data['src'] = this.src;
        }
        if (this.subtitles != null) {
            data['subtitles'] = this.subtitles..toList();
        }
        if (this.tags != null) {
            data['tags'] = this.tags.toList();
        }
        if (this.thumbPlayUrl != null) {
            data['thumbPlayUrl'] = this.thumbPlayUrl;
        }
        if (this.titlePgc != null) {
            data['titlePgc'] = this.titlePgc;
        }
        if (this.videoPosterBean != null) {
            data['videoPosterBean'] = this.videoPosterBean;
        }
        if (this.waterMarks != null) {
            data['waterMarks'] = this.waterMarks;
        }
        if (this.webAdTrack != null) {
            data['webAdTrack'] = this.webAdTrack;
        }
        if (this.webUrl != null) {
            data['webUrl'] = this.webUrl;
        }
        return data;
    }
}

class Author {
    String  adTrack;
    int approvedNotReadyVideoCount;
    String description;
    bool expert;
    Follow follow;
    String icon;
    int id;
    bool ifPgc;
    int latestReleaseTime;
    String link;
    String name;
    int recSort;
    Shield shield;
    int videoNum;

    Author({this.adTrack, this.approvedNotReadyVideoCount, this.description, this.expert, this.follow, this.icon, this.id, this.ifPgc, this.latestReleaseTime, this.link, this.name, this.recSort, this.shield, this.videoNum});

    factory Author.fromJson(Map<String, dynamic> json) {
        return Author(
            adTrack: json['adTrack'] != null ? (json['adTrack']) : null, 
            approvedNotReadyVideoCount: json['approvedNotReadyVideoCount'], 
            description: json['description'], 
            expert: json['expert'], 
            follow: json['follow'] != null ? Follow.fromJson(json['follow']) : null, 
            icon: json['icon'], 
            id: json['id'], 
            ifPgc: json['ifPgc'], 
            latestReleaseTime: json['latestReleaseTime'], 
            link: json['link'], 
            name: json['name'], 
            recSort: json['recSort'], 
            shield: json['shield'] != null ? Shield.fromJson(json['shield']) : null, 
            videoNum: json['videoNum'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['approvedNotReadyVideoCount'] = this.approvedNotReadyVideoCount;
        data['description'] = this.description;
        data['expert'] = this.expert;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['ifPgc'] = this.ifPgc;
        data['latestReleaseTime'] = this.latestReleaseTime;
        data['link'] = this.link;
        data['name'] = this.name;
        data['recSort'] = this.recSort;
        data['videoNum'] = this.videoNum;
        if (this.adTrack != null) {
            data['adTrack'] = this.adTrack;
        }
        if (this.follow != null) {
            data['follow'] = this.follow;
        }
        if (this.shield != null) {
            data['shield'] = this.shield;
        }
        return data;
    }
}

class Shield {
    int itemId;
    String itemType;
    bool shielded;

    Shield({this.itemId, this.itemType, this.shielded});

    factory Shield.fromJson(Map<String, dynamic> json) {
        return Shield(
            itemId: json['itemId'], 
            itemType: json['itemType'], 
            shielded: json['shielded'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['itemId'] = this.itemId;
        data['itemType'] = this.itemType;
        data['shielded'] = this.shielded;
        return data;
    }
}

class Follow {
    bool followed;
    int itemId;
    String itemType;

    Follow({this.followed, this.itemId, this.itemType});

    factory Follow.fromJson(Map<String, dynamic> json) {
        return Follow(
            followed: json['followed'], 
            itemId: json['itemId'], 
            itemType: json['itemType'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['followed'] = this.followed;
        data['itemId'] = this.itemId;
        data['itemType'] = this.itemType;
        return data;
    }
}

class Cover {
    String blurred;
    String detail;
    String feed;
    String homepage;
    Object sharing;

    Cover({this.blurred, this.detail, this.feed, this.homepage, this.sharing});

    factory Cover.fromJson(Map<String, dynamic> json) {
        return Cover(
            blurred: json['blurred'], 
            detail: json['detail'], 
            feed: json['feed'], 
            homepage: json['homepage'], 
            sharing: json['sharing'] != null ? (json['sharing']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['blurred'] = this.blurred;
        data['detail'] = this.detail;
        data['feed'] = this.feed;
        data['homepage'] = this.homepage;
        if (this.sharing != null) {
            data['sharing'] = this.sharing;
        }
        return data;
    }
}

class VideoPosterBean {
    String fileSizeStr;
    double scale;
    String url;

    VideoPosterBean({this.fileSizeStr, this.scale, this.url});

    factory VideoPosterBean.fromJson(Map<String, dynamic> json) {
        return VideoPosterBean(
            fileSizeStr: json['fileSizeStr'], 
            scale: json['scale'], 
            url: json['url'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['fileSizeStr'] = this.fileSizeStr;
        data['scale'] = this.scale;
        data['url'] = this.url;
        return data;
    }
}

class Consumption {
    int collectionCount;
    int realCollectionCount;
    int replyCount;
    int shareCount;

    Consumption({this.collectionCount, this.realCollectionCount, this.replyCount, this.shareCount});

    factory Consumption.fromJson(Map<String, dynamic> json) {
        return Consumption(
            collectionCount: json['collectionCount'], 
            realCollectionCount: json['realCollectionCount'], 
            replyCount: json['replyCount'], 
            shareCount: json['shareCount'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['collectionCount'] = this.collectionCount;
        data['realCollectionCount'] = this.realCollectionCount;
        data['replyCount'] = this.replyCount;
        data['shareCount'] = this.shareCount;
        return data;
    }
}

class Provider {
    String alias;
    String icon;
    String name;

    Provider({this.alias, this.icon, this.name});

    factory Provider.fromJson(Map<String, dynamic> json) {
        return Provider(
            alias: json['alias'], 
            icon: json['icon'], 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alias'] = this.alias;
        data['icon'] = this.icon;
        data['name'] = this.name;
        return data;
    }
}

class WebUrl {
    String forWeibo;
    String raw;

    WebUrl({this.forWeibo, this.raw});

    factory WebUrl.fromJson(Map<String, dynamic> json) {
        return WebUrl(
            forWeibo: json['forWeibo'], 
            raw: json['raw'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['forWeibo'] = this.forWeibo;
        data['raw'] = this.raw;
        return data;
    }
}

class PlayInfo {
    int height;
    String name;
    String type;
    String url;
    List<Url> urlList;
    int width;

    PlayInfo({this.height, this.name, this.type, this.url, this.urlList, this.width});

    factory PlayInfo.fromJson(Map<String, dynamic> json) {
        return PlayInfo(
            height: json['height'], 
            name: json['name'], 
            type: json['type'], 
            url: json['url'], 
            urlList: json['urlList'] != null ? (json['urlList'] as List).map((i) => Url.fromJson(i)).toList() : null, 
            width: json['width'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['height'] = this.height;
        data['name'] = this.name;
        data['type'] = this.type;
        data['url'] = this.url;
        data['width'] = this.width;
        if (this.urlList != null) {
            data['urlList'] = this.urlList..toList();
        }
        return data;
    }
}

class Url {
    String name;
    int size;
    String url;

    Url({this.name, this.size, this.url});

    factory Url.fromJson(Map<String, dynamic> json) {
        return Url(
            name: json['name'], 
            size: json['size'], 
            url: json['url'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        data['size'] = this.size;
        data['url'] = this.url;
        return data;
    }
}

class Tag {
    String actionUrl;
    Object adTrack;
    String bgPicture;
    Object childTagIdList;
    Object childTagList;
    int communityIndex;
    String desc;
    bool haveReward;
    String headerImage;
    int id;
    bool ifNewest;
    String name;
    Object newestEndTime;
    String tagRecType;

    Tag({this.actionUrl, this.adTrack, this.bgPicture, this.childTagIdList, this.childTagList, this.communityIndex, this.desc, this.haveReward, this.headerImage, this.id, this.ifNewest, this.name, this.newestEndTime, this.tagRecType});

    factory Tag.fromJson(Map<String, dynamic> json) {
        return Tag(
            actionUrl: json['actionUrl'], 
            adTrack: json['adTrack'] != null ? (json['adTrack']) : null, 
            bgPicture: json['bgPicture'], 
            childTagIdList: json['childTagIdList'] != null ? (json['childTagIdList']) : null, 
            childTagList: json['childTagList'] != null ? (json['childTagList']) : null, 
            communityIndex: json['communityIndex'], 
            desc: json['desc'] != null ? (json['desc']) : null,
            haveReward: json['haveReward'], 
            headerImage: json['headerImage'], 
            id: json['id'], 
            ifNewest: json['ifNewest'], 
            name: json['name'], 
            newestEndTime: json['newestEndTime'] != null ? (json['newestEndTime']) : null, 
            tagRecType: json['tagRecType'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['actionUrl'] = this.actionUrl;
        data['bgPicture'] = this.bgPicture;
        data['communityIndex'] = this.communityIndex;
        data['haveReward'] = this.haveReward;
        data['headerImage'] = this.headerImage;
        data['id'] = this.id;
        data['ifNewest'] = this.ifNewest;
        data['name'] = this.name;
        data['tagRecType'] = this.tagRecType;
        if (this.adTrack != null) {
            data['adTrack'] = this.adTrack;
        }
        if (this.childTagIdList != null) {
            data['childTagIdList'] = this.childTagIdList;
        }
        if (this.childTagList != null) {
            data['childTagList'] = this.childTagList;
        }
        if (this.desc != null) {
            data['desc'] = this.desc;
        }
        if (this.newestEndTime != null) {
            data['newestEndTime'] = this.newestEndTime;
        }
        return data;
    }
}