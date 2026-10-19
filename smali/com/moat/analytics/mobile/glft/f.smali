###### Class com.moat.analytics.mobile.glft.f (com.moat.analytics.mobile.glft.f)
.class Lcom/moat/analytics/mobile/glft/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/f$a;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/moat/analytics/mobile/glft/i;

.field final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/glft/f$a;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/f$a;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/f;->d:Lcom/moat/analytics/mobile/glft/f$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/f;->e:Z

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x4197d78400000000L    # 1.0E8

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "_moatTracker%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/f;->c:Ljava/lang/String;

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_56

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_56
    const/16 v0, 0x15

    if-lt v1, v0, :cond_5d

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5d
    sget-object p1, Lcom/moat/analytics/mobile/glft/i$a;->b:Lcom/moat/analytics/mobile/glft/i$a;

    sget-object v0, Lcom/moat/analytics/mobile/glft/f$a;->b:Lcom/moat/analytics/mobile/glft/f$a;

    if-ne p2, v0, :cond_65

    sget-object p1, Lcom/moat/analytics/mobile/glft/i$a;->c:Lcom/moat/analytics/mobile/glft/i$a;

    :cond_65
    new-instance p2, Lcom/moat/analytics/mobile/glft/i;

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    invoke-direct {p2, v0, p1}, Lcom/moat/analytics/mobile/glft/i;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/glft/i$a;)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 10

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mianahwvc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    const/4 p2, 0x3

    aput-object v3, v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, v1, p3

    const/4 p2, 0x5

    aput-object p0, v1, p2

    const/4 p0, 0x6

    aput-object p1, v1, p0

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, v1, p1

    const/16 p0, 0x8

    aput-object p5, v1, p0

    const-string p0, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/f;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/glft/f;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/f;->e:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/moatad.js\" type=\"text/javascript\"></script>\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</body>\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</html>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->d:Lcom/moat/analytics/mobile/glft/f$a;

    sget-object v1, Lcom/moat/analytics/mobile/glft/f$a;->a:Lcom/moat/analytics/mobile/glft/f$a;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/glft/f$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/glft/f$1;-><init>(Lcom/moat/analytics/mobile/glft/f;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->d:Lcom/moat/analytics/mobile/glft/f$a;

    sget-object v1, Lcom/moat/analytics/mobile/glft/f$a;->b:Lcom/moat/analytics/mobile/glft/f$a;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/glft/f$2;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/glft/f$2;-><init>(Lcom/moat/analytics/mobile/glft/f;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/f;->c:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string p4, "text/html"

    invoke-virtual {p2, p1, p4, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.f.AnonymousClass1 (com.moat.analytics.mobile.glft.f$1)
.class Lcom/moat/analytics/mobile/glft/f$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/f;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/f;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/f;->a(Lcom/moat/analytics/mobile/glft/f;)Z

    move-result p1

    if-nez p1, :cond_1a

    :try_start_8
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/glft/f;->a(Lcom/moat/analytics/mobile/glft/f;Z)Z

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/i;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.f.AnonymousClass2 (com.moat.analytics.mobile.glft.f$2)
.class Lcom/moat/analytics/mobile/glft/f$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/f;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/f;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/f$2;->a:Lcom/moat/analytics/mobile/glft/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$2;->a:Lcom/moat/analytics/mobile/glft/f;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/f;->a(Lcom/moat/analytics/mobile/glft/f;)Z

    move-result p1

    if-nez p1, :cond_23

    :try_start_8
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$2;->a:Lcom/moat/analytics/mobile/glft/f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/glft/f;->a(Lcom/moat/analytics/mobile/glft/f;Z)Z

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$2;->a:Lcom/moat/analytics/mobile/glft/f;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/i;->a()V

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$2;->a:Lcom/moat/analytics/mobile/glft/f;

    iget-object p2, p1, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/f;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/moat/analytics/mobile/glft/i;->b(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_23
    :goto_23
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.f.a (com.moat.analytics.mobile.glft.f$a)
.class final enum Lcom/moat/analytics/mobile/glft/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/glft/f$a;

.field public static final enum b:Lcom/moat/analytics/mobile/glft/f$a;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/glft/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/glft/f$a;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/f$a;->a:Lcom/moat/analytics/mobile/glft/f$a;

    new-instance v1, Lcom/moat/analytics/mobile/glft/f$a;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/moat/analytics/mobile/glft/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/f$a;->b:Lcom/moat/analytics/mobile/glft/f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/moat/analytics/mobile/glft/f$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/moat/analytics/mobile/glft/f$a;->c:[Lcom/moat/analytics/mobile/glft/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/f$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/f$a;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/f$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/f$a;->c:[Lcom/moat/analytics/mobile/glft/f$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/f$a;

    return-object v0
.end method
