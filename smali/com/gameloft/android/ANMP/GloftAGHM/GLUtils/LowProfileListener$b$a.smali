###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener.b.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener$b$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;
.super Ljava/lang/Object;
.source "LowProfileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_27

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;

    iget-object v0, v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;

    iget-object v0, v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2e

    :cond_27
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;

    iget-object v0, v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->access$000(Landroid/app/Activity;)V

    :goto_2e
    return-void
.end method
