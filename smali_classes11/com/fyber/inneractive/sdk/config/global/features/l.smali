###### Class com.fyber.inneractive.sdk.config.global.features.l (com.fyber.inneractive.sdk.config.global.features.l)
.class public Lcom/fyber/inneractive/sdk/config/global/features/l;
.super Lcom/fyber/inneractive/sdk/config/global/features/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "omsdk"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/fyber/inneractive/sdk/config/global/features/g;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/features/l;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/config/global/features/l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Lcom/fyber/inneractive/sdk/config/global/features/g;)V

    return-object v0
.end method

.method public d()Z
    .registers 5

    const-string v0, "enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "OMSDK AB %s"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
