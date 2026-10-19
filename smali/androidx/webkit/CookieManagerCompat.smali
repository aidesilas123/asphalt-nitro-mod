###### Class androidx.webkit.CookieManagerCompat (androidx.webkit.CookieManagerCompat)
.class public Landroidx/webkit/CookieManagerCompat;
.super Ljava/lang/Object;
.source "CookieManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdapter(Landroid/webkit/CookieManager;)Landroidx/webkit/internal/CookieManagerAdapter;
    .registers 2

    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertCookieManager(Landroid/webkit/CookieManager;)Landroidx/webkit/internal/CookieManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getCookieInfo(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0    # Landroid/webkit/CookieManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/CookieManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Landroidx/webkit/CookieManagerCompat;->getAdapter(Landroid/webkit/CookieManager;)Landroidx/webkit/internal/CookieManagerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/webkit/internal/CookieManagerAdapter;->getCookieInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
