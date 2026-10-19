###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;
.super Ljava/lang/Object;
.source "VirtualKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->SetKeyboardText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1a
    return-void
.end method
