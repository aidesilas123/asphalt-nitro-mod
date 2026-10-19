###### Class com.fyber.inneractive.sdk.config.global.f (com.fyber.inneractive.sdk.config.global.f)
.class public Lcom/fyber/inneractive/sdk/config/global/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/config/global/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/f;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/config/global/f;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/config/global/e;)Z
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/f;->a:Ljava/lang/String;

    if-eqz p1, :cond_14

    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/f;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_11
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/f;->b:Z

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "os"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/config/global/f;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s - %s include: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
