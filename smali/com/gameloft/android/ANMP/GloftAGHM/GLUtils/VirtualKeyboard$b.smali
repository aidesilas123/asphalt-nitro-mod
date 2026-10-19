###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard.b (com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;
.super Ljava/lang/Object;
.source "VirtualKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->ShowKeyboardInternal(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;Landroid/view/View;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:I


# direct methods
.method constructor <init>(ILcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;ILjava/lang/String;Landroid/view/View;I)V
    .registers 7

    iput p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->a:I

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->c:I

    iput-object p4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->e:Landroid/view/View;

    iput p6, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->isKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_67

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->a:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_11
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->e:Landroid/view/View;

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->d:Landroid/view/View;

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->f:I

    const/4 v2, 0x0

    if-lez v1, :cond_46

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->f:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_46
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5b
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;->b:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_67
    return-void
.end method
