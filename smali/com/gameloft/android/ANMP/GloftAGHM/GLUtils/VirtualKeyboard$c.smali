###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard.c (com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$c;
.super Ljava/lang/Object;
.source "VirtualKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$c;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->d:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->c:Landroid/view/ViewGroup;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1c

    :cond_15
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->c:Landroid/view/ViewGroup;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    :goto_1c
    return-void
.end method
