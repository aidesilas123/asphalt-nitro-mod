###### Class com.fyber.inneractive.sdk.mraid.u (com.fyber.inneractive.sdk.mraid.u)
.class public abstract Lcom/fyber/inneractive/sdk/mraid/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/mraid/u;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_e

    const-string v2, "[^a-zA-Z0-9_,:\\s\\{\\}\\\'\\\"]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    return-object v1
.end method
