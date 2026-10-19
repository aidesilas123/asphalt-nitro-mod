###### Class com.kidoz.sdk.api.players.web_player.KidozWebView (com.kidoz.sdk.api.players.web_player.KidozWebView)
.class public Lcom/kidoz/sdk/api/players/web_player/KidozWebView;
.super Landroid/webkit/WebView;
.source "KidozWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;
    }
.end annotation


# static fields
.field private static API:I = 0x0

.field protected static final HTTP:Ljava/lang/String; = "http://"

.field protected static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final KIDOZ_DOMAIN:Ljava/lang/String; = "kidoz"

.field protected static final PREFIXES_TO_REMOVE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final WWW:Ljava/lang/String; = "www."

.field protected static final WWW2:Ljava/lang/String; = "www2."


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowedSitesKeyWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field private mContext:Landroid/content/Context;

.field private mGooglePlayAppId:Ljava/lang/String;

.field private mLastOverloadUrl:Ljava/lang/String;

.field private mViewVisibilityEventListener:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

.field private mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field private mWebViewIVisibilityListener:Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

.field private onLounchExternalAppFromRedirectListener:Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

.field private staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->PREFIXES_TO_REMOVE:Ljava/util/List;

    const-string v1, "http://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "www."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "www2."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mLastOverloadUrl:Ljava/lang/String;

    const-class v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mGooglePlayAppId:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebView()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initForTarget(Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mLastOverloadUrl:Ljava/lang/String;

    const-class p2, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    sget-object p2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mGooglePlayAppId:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebView()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initForTarget(Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mLastOverloadUrl:Ljava/lang/String;

    const-class v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mGooglePlayAppId:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebView()V

    invoke-virtual {p0, p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initForTarget(Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebViewIVisibilityListener:Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mLastOverloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->checkIfSafeUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mGooglePlayAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->onLounchExternalAppFromRedirectListener:Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkIfSafeUrl(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b7

    const-string v2, "kidoz"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v1, :cond_f

    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_b7

    :cond_f
    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    move-object p1, v2

    :goto_1e
    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfSafeUrl: fixedUrlString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    if-eqz v3, :cond_b0

    const/4 v3, 0x0

    :goto_39
    iget-object v4, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b7

    iget-object v4, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfSafeUrl: originalUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6c

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6d

    :cond_6c
    move-object v5, v2

    :goto_6d
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    const-string v2, "********************************"

    invoke-static {v0, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfSafeUrl: found a match:fixedUrlString = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfSafeUrl: found a match:originalUrl = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_b0
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    const-string v1, "Web Player  Not allowed link!"

    invoke-static {p1, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    :goto_b7
    return v0
.end method

.method private getDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomain: URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5b

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomain: urlStringWithoutPrefix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomain: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_54
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    const-string v0, "getDomain: domainPartsArray = null"

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    const/4 p1, 0x0

    :goto_5c
    return-object p1
.end method

.method private initAWorkingSettingsForVideoInWebView()V
    .registers 10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_16

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_16
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setDrawingCacheBackgroundColor(I)V

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setAnimationCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    const/16 v4, 0x13

    if-ge v0, v4, :cond_50

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/databases"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_50
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/16 v5, 0x12

    if-ge v0, v5, :cond_6e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    :cond_6e
    const/16 v6, 0x11

    if-ge v0, v6, :cond_79

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    :cond_79
    if-ge v0, v5, :cond_84

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    :cond_84
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    if-ge v0, v5, :cond_fd

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_fd
    if-lt v0, v6, :cond_106

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_106
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 v5, 0x10

    if-lt v0, v5, :cond_12d

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_12d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    if-lt v0, v5, :cond_150

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_150
    if-lt v0, v2, :cond_159

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_159
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    if-lt v0, v4, :cond_169

    sget-boolean v1, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->DGM:Z

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_169
    if-lt v0, v6, :cond_172

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_172
    return-void
.end method

.method private initWebChromeClient()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;-><init>(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private initWebView()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mViewVisibilityEventListener:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    if-nez v0, :cond_13

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mViewVisibilityEventListener:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$1;-><init>(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->setViewVisibilityEventListener(Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;)V

    :cond_13
    new-instance v0, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDrawingCacheBackgroundColor(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setAnimationCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    sget v3, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v4, 0xf

    if-le v3, v4, :cond_44

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4b

    :cond_44
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4b
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setSaveEnabled(Z)V

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    invoke-direct {v1}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;-><init>()V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebChromeClient()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_6f
    return-void
.end method

.method private static removePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->PREFIXES_TO_REMOVE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    goto :goto_a

    :cond_29
    return-object p0

    :catch_2a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLastOverloadUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mLastOverloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initForTarget(Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;)V
    .registers 3

    if-eqz p1, :cond_2a

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    goto :goto_2a

    :cond_17
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initAWorkingSettingsForVideoInWebView()V

    goto :goto_2a

    :cond_1b
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initializeGeneralSettingsState(Landroid/content/Context;)V

    goto :goto_2a

    :cond_23
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initAWorkingSettingsForVideoInWebView()V

    goto :goto_2a

    :cond_27
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initAWorkingSettingsForVideoInWebView()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public declared-synchronized initOnlineGameSettings(Landroid/content/Context;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    :cond_13
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-ge v0, v2, :cond_21

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    :cond_21
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    if-lt v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_2c
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_37

    sget-boolean v0, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->DGM:Z

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_37
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    if-ge v0, v2, :cond_57

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/databases"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_57
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_81

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    :cond_81
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    sget p1, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_e2

    if-lt p1, v2, :cond_c8

    :try_start_99
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a2} :catch_a3
    .catchall {:try_start_99 .. :try_end_a2} :catchall_e2

    goto :goto_d1

    :catch_a3
    move-exception p1

    :try_start_a4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to set layout algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    :cond_c8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :goto_d1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    const/4 v1, 0x0

    if-le p1, v0, :cond_dd

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_e0

    :cond_dd
    invoke-virtual {p0, v3, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_e0
    .catchall {:try_start_a4 .. :try_end_e0} :catchall_e2

    :goto_e0
    monitor-exit p0

    return-void

    :catchall_e2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initializeGeneralSettingsState(Landroid/content/Context;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    :cond_12
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-ge v0, v2, :cond_20

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    :cond_20
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/4 v4, 0x0

    if-lt v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_2c
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_37

    sget-boolean v0, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->DGM:Z

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_37
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    if-ge v0, v2, :cond_57

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/databases"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_57
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v5, "utf-8"

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/16 v5, 0x10

    if-lt v0, v5, :cond_d2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_d2
    const-string v0, "settings"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v5, "location"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    const/4 v5, 0x2

    if-ge v0, v2, :cond_114

    const-string v0, "enableflash"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10b

    if-eq v0, v3, :cond_101

    if-eq v0, v5, :cond_f7

    goto :goto_114

    :cond_f7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_114

    :cond_101
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_114

    :cond_10b
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v6, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    :cond_114
    :goto_114
    const-string v0, "passwords"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12e

    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    if-ge v0, v1, :cond_127

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_127
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :cond_12e
    const-string v0, "java"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    :cond_144
    const-string v0, "textreflow"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_156

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_192

    :cond_156
    sget v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->API:I

    if-lt v0, v2, :cond_189

    :try_start_15a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_163} :catch_164

    goto :goto_192

    :catch_164
    move-exception v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to set layout algorithm: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_192

    :cond_189
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :goto_192
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "blockimages"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "newwindows"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "wideviewport"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "overviewmode"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const-string v0, "textsize"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_202

    if-eq p1, v5, :cond_1f8

    if-eq p1, v1, :cond_1ee

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1da

    goto :goto_20b

    :cond_1da
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_20b

    :cond_1e4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_20b

    :cond_1ee
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_20b

    :cond_1f8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x96

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_20b

    :cond_202
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :goto_20b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    const/4 v1, 0x0

    if-le p1, v0, :cond_216

    invoke-virtual {p0, v5, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_219

    :cond_216
    invoke-virtual {p0, v3, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_219
    const/16 v0, 0x15

    if-lt p1, v0, :cond_224

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_224
    return-void
.end method

.method public invalidate()V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method public loadWebUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mGooglePlayAppId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadWebUrl([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const-string v0, ""

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mLastOverloadUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_23
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mAllowedSitesKeyWords:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mGooglePlayAppId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroyDrawingCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setContentItem(Lcom/kidoz/sdk/api/structure/ContentItem;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    return-void
.end method

.method public setOnLounchExternalAppFromRedirect(Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->onLounchExternalAppFromRedirectListener:Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

    return-void
.end method

.method public setWebViewVisibilityListener(Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->mWebViewIVisibilityListener:Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

    return-void
.end method

.method public declared-synchronized stopAndReleaseWebView()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroyDrawingCache()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.kidoz.sdk.api.players.web_player.KidozWebView.AnonymousClass1 (com.kidoz.sdk.api.players.web_player.KidozWebView$1)
.class Lcom/kidoz/sdk/api/players/web_player/KidozWebView$1;
.super Ljava/lang/Object;
.source "KidozWebView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewBecameVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$000(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$000(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;->onWebViewBecameVisible(Z)V

    :cond_11
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.KidozWebView.AnonymousClass2 (com.kidoz.sdk.api.players.web_player.KidozWebView$2)
.class Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;
.super Landroid/webkit/WebViewClient;
.source "KidozWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebChromeClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KIDOZ_LOG  - onPageStarted "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LEV"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    new-instance v5, Lcom/kidoz/events/a;

    invoke-direct {v5}, Lcom/kidoz/events/a;-><init>()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ItemID"

    invoke-virtual {v5, v0, p1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvertiserID"

    invoke-virtual {v5, v0, p1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/kidoz/events/EventManager;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "0"

    const-string v3, ""

    const-string v6, "WebView Error"

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KIDOZ_LOG  - shouldOverrideUrlLoading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LEV"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    :cond_26
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0, p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$202(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$300(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading: url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v2, :cond_54

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_54
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v2, :cond_123

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v2, :cond_6a

    goto/16 :goto_123

    :cond_6a
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v2, :cond_11f

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "start.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "play.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    goto :goto_9a

    :cond_95
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_151

    :cond_9a
    :goto_9a
    :try_start_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d1

    array-length v0, p2

    if-le v0, v1, :cond_d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$700(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

    move-result-object p1

    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$700(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;->onLounch()V

    :cond_f0
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$800(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_fe} :catch_ff

    goto :goto_151

    :catch_ff
    move-exception p1

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$300(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to open google start for promoted app: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_151

    :cond_11f
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_151

    :cond_123
    :goto_123
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$500(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-ne p1, v1, :cond_150

    new-instance v3, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {v3}, Lcom/kidoz/sdk/api/structure/ContentItem;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v3, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V

    invoke-virtual {v3, v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->setIsPromoted(Z)V

    invoke-virtual {v3, p2}, Lcom/kidoz/sdk/api/structure/ContentItem;->setData(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object p2, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_NONE:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {p2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "0"

    invoke-static/range {v2 .. v8}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    :cond_150
    move v1, p1

    :goto_151
    return v1
.end method

###### Class com.kidoz.sdk.api.players.web_player.KidozWebView.AnonymousClass3 (com.kidoz.sdk.api.players.web_player.KidozWebView$3)
.class synthetic Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;
.super Ljava/lang/Object;
.source "KidozWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/web_player/KidozWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->values()[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.KidozWebView.IOnLounchExternalAppFromRedirectListener (com.kidoz.sdk.api.players.web_player.KidozWebView$IOnLounchExternalAppFromRedirectListener)
.class public interface abstract Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;
.super Ljava/lang/Object;
.source "KidozWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/web_player/KidozWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnLounchExternalAppFromRedirectListener"
.end annotation


# virtual methods
.method public abstract onLounch()V
.end method
