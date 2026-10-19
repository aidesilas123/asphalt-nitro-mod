###### Class com.bytedance.sdk.component.d.d.e (com.bytedance.sdk.component.d.d.e)
.class public Lcom/bytedance/sdk/component/d/d/e;
.super Lcom/bytedance/sdk/component/d/d/a;
.source "DecoderVisitor.java"


# instance fields
.field private a:[B

.field private b:Lcom/bytedance/sdk/component/d/f;


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/d/f;)V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/d/a;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/d/e;->a:[B

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/d/e;->b:Lcom/bytedance/sdk/component/d/f;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/d/e;->b:Lcom/bytedance/sdk/component/d/f;

    if-nez v0, :cond_d

    new-instance p1, Lcom/bytedance/sdk/component/d/d/k;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/d/d/k;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    goto :goto_15

    :cond_d
    new-instance v0, Lcom/bytedance/sdk/component/d/d/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/d/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    :goto_15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "decode"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->s()Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/c/f;->a(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/c/b/a;

    move-result-object v1

    const/16 v2, 0x3ea

    :try_start_a
    iget-object v3, p0, Lcom/bytedance/sdk/component/d/d/e;->a:[B

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/d/c/b/a;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2d

    new-instance v3, Lcom/bytedance/sdk/component/d/d/m;

    iget-object v4, p0, Lcom/bytedance/sdk/component/d/d/e;->b:Lcom/bytedance/sdk/component/d/f;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/bytedance/sdk/component/d/d/m;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/d/f;Z)V

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->t()Lcom/bytedance/sdk/component/d/b;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/d/c/f;->a(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/q;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/component/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_2d
    const-string v0, "decode failed bitmap null"

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/bytedance/sdk/component/d/d/e;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/d/c/c;)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_34

    goto :goto_4d

    :catchall_34
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode failed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/bytedance/sdk/component/d/d/e;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/d/c/c;)V

    :goto_4d
    return-void
.end method
