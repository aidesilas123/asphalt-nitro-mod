###### Class com.fyber.inneractive.sdk.mraid.x (com.fyber.inneractive.sdk.mraid.x)
.class public Lcom/fyber/inneractive/sdk/mraid/x;
.super Lcom/fyber/inneractive/sdk/mraid/u;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/web/i$g;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i$g;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/mraid/u;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/mraid/x;->a:Lcom/fyber/inneractive/sdk/web/i$g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/mraid/x;->a:Lcom/fyber/inneractive/sdk/web/i$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
