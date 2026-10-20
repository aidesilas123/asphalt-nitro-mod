###### Class com.fyber.inneractive.sdk.config.s (com.fyber.inneractive.sdk.config.s)
.class public final Lcom/fyber/inneractive/sdk/config/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/config/s;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/16 v0, 0x64

    iput v0, p0, Lcom/fyber/inneractive/sdk/config/s;->a:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/fyber/inneractive/sdk/config/s;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/config/s;->c:Z

    iput v0, p0, Lcom/fyber/inneractive/sdk/config/s;->d:I

    const-string v0, "wv.inner-active.mobi/simpleM2M/clientRequestEnhancedXmlAd"

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/s;->e:Ljava/lang/String;

    const-string v0, "sdk-events.inner-active.mobi/Event"

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/s;->f:Ljava/lang/String;

    return-void
.end method
