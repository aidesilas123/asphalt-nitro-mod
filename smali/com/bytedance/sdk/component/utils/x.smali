###### Class com.bytedance.sdk.component.utils.x (com.bytedance.sdk.component.utils.x)
.class public Lcom/bytedance/sdk/component/utils/x;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/x$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/utils/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/x$a;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p2, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/x;->a:Ljava/lang/ref/WeakReference;

    :cond_c
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/utils/x$a;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/x;->a:Ljava/lang/ref/WeakReference;

    :cond_c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/x;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/utils/x$a;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/utils/x$a;->a(Landroid/os/Message;)V

    :cond_12
    return-void
.end method

###### Class com.bytedance.sdk.component.utils.x.a (com.bytedance.sdk.component.utils.x$a)
.class public interface abstract Lcom/bytedance/sdk/component/utils/x$a;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/os/Message;)V
.end method
