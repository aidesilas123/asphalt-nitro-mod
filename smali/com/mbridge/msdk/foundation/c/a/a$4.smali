###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass4 (com.mbridge.msdk.foundation.c.a.a$4)
.class final Lcom/mbridge/msdk/foundation/c/a/a$4;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method
