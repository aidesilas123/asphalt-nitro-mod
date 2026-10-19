###### Class com.fyber.inneractive.sdk.measurement.tracker.c (com.fyber.inneractive.sdk.measurement.tracker.c)
.class public abstract Lcom/fyber/inneractive/sdk/measurement/tracker/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/measurement/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/iab/omid/library/fyber/adsession/AdSession;

.field public b:Lcom/iab/omid/library/fyber/adsession/AdEvents;

.field public c:Lcom/fyber/inneractive/sdk/flow/q;

.field public d:Z

.field public final e:Lcom/iab/omid/library/fyber/adsession/Partner;

.field public f:Landroid/webkit/WebView;

.field public g:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/fyber/adsession/Partner;Landroid/webkit/WebView;Lcom/fyber/inneractive/sdk/flow/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/fyber/adsession/Partner;",
            "Landroid/webkit/WebView;",
            "Lcom/fyber/inneractive/sdk/flow/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->d:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/measurement/tracker/c$a;-><init>(Lcom/fyber/inneractive/sdk/measurement/tracker/c;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->g:Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->e:Lcom/iab/omid/library/fyber/adsession/Partner;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->f:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->c:Lcom/fyber/inneractive/sdk/flow/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->c()Lcom/iab/omid/library/fyber/adsession/AdSessionConfiguration;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_36

    :try_start_6
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->e:Lcom/iab/omid/library/fyber/adsession/Partner;

    invoke-static {v2, p1, v0, v0}, Lcom/iab/omid/library/fyber/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/fyber/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/fyber/adsession/AdSessionContext;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception v0

    :try_start_e
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_12
    invoke-static {v1, v0}, Lcom/iab/omid/library/fyber/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/fyber/adsession/AdSessionConfiguration;Lcom/iab/omid/library/fyber/adsession/AdSessionContext;)Lcom/iab/omid/library/fyber/adsession/AdSession;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/adsession/AdSession;->getAdSessionStatePublisher()Lcom/iab/omid/library/fyber/publisher/AdSessionStatePublisher;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2b

    if-eq v0, p1, :cond_2b

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_2b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/fyber/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-virtual {p1}, Lcom/iab/omid/library/fyber/adsession/AdSession;->start()V
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "OpenMeasurementTracker"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s - %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->c:Lcom/fyber/inneractive/sdk/flow/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    goto :goto_26

    :cond_25
    move-object v3, v2

    :goto_26
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/flow/q;->d()Lcom/fyber/inneractive/sdk/response/e;

    move-result-object v2

    :cond_2c
    invoke-static {p1, v0, v3, v2}, Lcom/fyber/inneractive/sdk/network/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    if-eqz v0, :cond_22

    :try_start_4
    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/adsession/AdSession;->finish()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Ljava/lang/Throwable;)V

    :goto_c
    if-eqz p1, :cond_10

    const/4 p1, 0x0

    goto :goto_12

    :cond_10
    const/16 p1, 0x3e8

    :goto_12
    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;-><init>(Lcom/fyber/inneractive/sdk/measurement/tracker/c;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->b:Lcom/iab/omid/library/fyber/adsession/AdEvents;

    :cond_22
    return-void
.end method

.method public abstract c()Lcom/iab/omid/library/fyber/adsession/AdSessionConfiguration;
.end method

###### Class com.fyber.inneractive.sdk.measurement.tracker.c.a (com.fyber.inneractive.sdk.measurement.tracker.c$a)
.class public Lcom/fyber/inneractive/sdk/measurement/tracker/c$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/measurement/tracker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/measurement/tracker/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$a;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$a;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Z)V

    return p2
.end method

###### Class com.fyber.inneractive.sdk.measurement.tracker.c.b (com.fyber.inneractive.sdk.measurement.tracker.c$b)
.class public Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/measurement/tracker/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearing webview"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->f:Landroid/webkit/WebView;

    :cond_16
    return-void
.end method

###### Class com.fyber.inneractive.sdk.measurement.tracker.c.EnumC0166c (com.fyber.inneractive.sdk.measurement.tracker.c$c)
.class public final enum Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/measurement/tracker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

.field public static final enum CloseButton:Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

.field public static final enum IdentifierView:Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

.field public static final enum ProgressOverlay:Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    const-string v1, "CloseButton"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;->CloseButton:Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    new-instance v1, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    const-string v3, "ProgressOverlay"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;->ProgressOverlay:Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    new-instance v3, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    const-string v5, "IdentifierView"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;->IdentifierView:Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;->$VALUES:[Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;->$VALUES:[Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/measurement/tracker/c$c;

    return-object v0
.end method
