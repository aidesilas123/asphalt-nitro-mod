###### Class com.fyber.inneractive.sdk.measurement.b (com.fyber.inneractive.sdk.measurement.b)
.class public Lcom/fyber/inneractive/sdk/measurement/b;
.super Lcom/fyber/inneractive/sdk/measurement/a;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/iab/omid/library/fyber/adsession/Partner;

.field public final f:Lcom/fyber/inneractive/sdk/measurement/tracker/d;

.field public g:Lcom/fyber/inneractive/sdk/network/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/fyber/inneractive/sdk/network/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/fyber/inneractive/sdk/network/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/measurement/a;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/measurement/tracker/d;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/measurement/tracker/d;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/b;->f:Lcom/fyber/inneractive/sdk/measurement/tracker/d;

    new-instance v0, Lcom/fyber/inneractive/sdk/measurement/b$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/measurement/b$a;-><init>(Lcom/fyber/inneractive/sdk/measurement/b;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/b;->g:Lcom/fyber/inneractive/sdk/network/w;

    new-instance v0, Lcom/fyber/inneractive/sdk/measurement/b$b;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/measurement/b$b;-><init>(Lcom/fyber/inneractive/sdk/measurement/b;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/b;->h:Lcom/fyber/inneractive/sdk/network/w;

    new-instance v0, Lcom/fyber/inneractive/sdk/measurement/b$c;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/measurement/b$c;-><init>(Lcom/fyber/inneractive/sdk/measurement/b;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/b;->i:Lcom/fyber/inneractive/sdk/network/w;

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/measurement/b;Landroid/content/Context;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/iab/omid/library/fyber/Omid;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https://cdn2.inner-active.mobi/client/ia-js-tags/omsdk/%s.js"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/measurement/b;->g:Lcom/fyber/inneractive/sdk/network/w;

    const-string v4, "omid-latest.js"

    invoke-virtual {p0, p1, v1, v4, v2}, Lcom/fyber/inneractive/sdk/measurement/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/w;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/iab/omid/library/fyber/Omid;->getVersion()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "https://cdn2.inner-active.mobi/client/ia-js-tags/omsdk/omid-session-client-%s.js"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/measurement/b;->h:Lcom/fyber/inneractive/sdk/network/w;

    const-string v2, "omid-session-client-latest.js"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/fyber/inneractive/sdk/measurement/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/w;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/b;->i:Lcom/fyber/inneractive/sdk/network/w;

    const-string v1, "https://cdn2.inner-active.mobi/client/ia-js-tags/omsdk/dt-omsdk-mraid-video-tracker.js"

    const-string v2, "dt-omsdk-mraid-video-tracker.js"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fyber/inneractive/sdk/measurement/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/w;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/w;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/fyber/inneractive/sdk/network/g0;

    new-instance v1, Lcom/fyber/inneractive/sdk/cache/e;

    invoke-direct {v1, p2, p3}, Lcom/fyber/inneractive/sdk/cache/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p4, p1, v1}, Lcom/fyber/inneractive/sdk/network/g0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p1, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.measurement.b.a (com.fyber.inneractive.sdk.measurement.b$a)
.class public Lcom/fyber/inneractive/sdk/measurement/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/measurement/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/measurement/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/measurement/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/b$a;->a:Lcom/fyber/inneractive/sdk/measurement/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/measurement/b$a;->a:Lcom/fyber/inneractive/sdk/measurement/b;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/measurement/b;->b:Ljava/lang/String;

    :cond_8
    return-void
.end method

###### Class com.fyber.inneractive.sdk.measurement.b.C0165b (com.fyber.inneractive.sdk.measurement.b$b)
.class public Lcom/fyber/inneractive/sdk/measurement/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/measurement/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/measurement/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/measurement/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/b$b;->a:Lcom/fyber/inneractive/sdk/measurement/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/measurement/b$b;->a:Lcom/fyber/inneractive/sdk/measurement/b;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/measurement/b;->c:Ljava/lang/String;

    :cond_8
    return-void
.end method

###### Class com.fyber.inneractive.sdk.measurement.b.c (com.fyber.inneractive.sdk.measurement.b$c)
.class public Lcom/fyber/inneractive/sdk/measurement/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/measurement/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/measurement/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/measurement/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/b$c;->a:Lcom/fyber/inneractive/sdk/measurement/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/measurement/b$c;->a:Lcom/fyber/inneractive/sdk/measurement/b;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/measurement/b;->d:Ljava/lang/String;

    :cond_8
    return-void
.end method
