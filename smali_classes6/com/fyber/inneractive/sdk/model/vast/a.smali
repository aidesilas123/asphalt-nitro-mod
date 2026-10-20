###### Class com.fyber.inneractive.sdk.model.vast.a (com.fyber.inneractive.sdk.model.vast.a)
.class public Lcom/fyber/inneractive/sdk/model/vast/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    move-object p1, v0

    :goto_c
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/model/vast/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_16

    :cond_15
    move-object p2, v0

    :goto_16
    iput-object p2, p0, Lcom/fyber/inneractive/sdk/model/vast/a;->b:Ljava/lang/String;

    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "[TIME]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 p1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/model/vast/a;->d:Z

    return-void
.end method
