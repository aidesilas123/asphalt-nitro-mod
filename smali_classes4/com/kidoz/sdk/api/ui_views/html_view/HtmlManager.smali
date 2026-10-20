###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlManager (com.kidoz.sdk.api.ui_views.html_view.HtmlManager)
.class public Lcom/kidoz/sdk/api/ui_views/html_view/HtmlManager;
.super Ljava/lang/Object;
.source "HtmlManager.java"


# static fields
.field private static final ERROR_ILLEGAL_AD_TYPE:Ljava/lang/String; = "Error: Kidoz HtmlManager got an unknown adType."

.field private static final TAG:Ljava/lang/String; = "KidozHtmlManager"

.field private static htmlViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlManager;->htmlViewsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntrstDefaultHtmlView(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlManager;->htmlViewsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    return-object p0
.end method

.method public static initIntrstDefaultHtmlView(Landroid/content/Context;Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;-><init>(Landroid/content/Context;Z)V

    sget-object p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlManager;->htmlViewsMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
