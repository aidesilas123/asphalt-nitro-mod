###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils.b.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils$b$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;
.super Ljava/lang/Object;
.source "SUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;

    iget-object v2, v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->a:Ljava/lang/String;

    iget v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->b:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_17
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;

    iget-object v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;

    iget v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3e

    return-void

    :cond_3e
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_45

    :catch_45
    return-void
.end method
