###### Class com.bytedance.sdk.component.a.d (com.bytedance.sdk.component.a.d)
.class public abstract Lcom/bytedance/sdk/component/a/d;
.super Lcom/bytedance/sdk/component/a/b;
.source "BaseStatefulMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/a/d$a;,
        Lcom/bytedance/sdk/component/a/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/a/b<",
        "TP;TR;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/bytedance/sdk/component/a/d$a;

.field private c:Lcom/bytedance/sdk/component/a/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/a/d;->a:Z

    return-void
.end method

.method private g()Z
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/d;->a:Z

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Jsb async call already finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hashcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/RuntimeException;)V

    const/4 v0, 0x0

    return v0

    :cond_2f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/bytedance/sdk/component/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/bytedance/sdk/component/a/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/a/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;Lcom/bytedance/sdk/component/a/f;Lcom/bytedance/sdk/component/a/d$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/a/f;",
            "Lcom/bytedance/sdk/component/a/d$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/d;->c:Lcom/bytedance/sdk/component/a/f;

    iput-object p3, p0, Lcom/bytedance/sdk/component/a/d;->b:Lcom/bytedance/sdk/component/a/d$a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/a/d;->a(Ljava/lang/Object;Lcom/bytedance/sdk/component/a/f;)V

    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/d;->b:Lcom/bytedance/sdk/component/a/d$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/a/d$a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/d;->e()V

    :cond_e
    return-void
.end method

.method protected final c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/a/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected abstract d()V
.end method

.method protected e()V
    .registers 2
    .annotation build Lcom/bytedance/component/sdk/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/a/d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/d;->c:Lcom/bytedance/sdk/component/a/f;

    return-void
.end method

.method f()V
    .registers 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/d;->d()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/d;->e()V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.d.a (com.bytedance.sdk.component.a.d$a)
.class interface abstract Lcom/bytedance/sdk/component/a/d$a;
.super Ljava/lang/Object;
.source "BaseStatefulMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method

###### Class com.bytedance.sdk.component.a.d.b (com.bytedance.sdk.component.a.d$b)
.class public interface abstract Lcom/bytedance/sdk/component/a/d$b;
.super Ljava/lang/Object;
.source "BaseStatefulMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()Lcom/bytedance/sdk/component/a/d;
.end method
