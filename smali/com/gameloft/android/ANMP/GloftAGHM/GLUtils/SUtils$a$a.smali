###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils.a.RunnableC0210a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils$a$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a$a;
.super Ljava/lang/Object;
.source "SUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    const/high16 v1, 0x7f120000

    if-nez v0, :cond_17

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;

    iget v2, v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;->a:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_17
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;

    iget v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3a

    return-void

    :cond_3a
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_41

    :catch_41
    return-void
.end method
