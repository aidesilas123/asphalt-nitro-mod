###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard (com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;
.super Landroid/widget/EditText;
.source "VirtualKeyboard.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field static a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

.field static b:Landroid/app/Activity;

.field static c:Landroid/view/ViewGroup;

.field static d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setMaxHeight(I)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setMaxWidth(I)V

    invoke-virtual {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sput-object p2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->c:Landroid/view/ViewGroup;

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    sput-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->b:Landroid/app/Activity;

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->setSingleLine()V

    return-void
.end method

.method public static GetVirtualKeyboardText()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, ""

    return-object v0
.end method

.method public static HideKeyboard()V
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->a()V

    return-void
.end method

.method public static SetKeyboardText(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    :try_start_4
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->b:Landroid/app/Activity;

    new-instance v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;

    invoke-direct {v2, v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public static ShowKeyboard(Ljava/lang/String;IIII)V
    .registers 12

    if-nez p3, :cond_b

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    const/high16 v1, 0x12000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_b
    if-nez p2, :cond_1e

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object p2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    or-int/lit8 v0, v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1e
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v1

    sget-object p2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->c:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->ShowKeyboardInternal(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;Landroid/view/View;Ljava/lang/String;III)V

    return-void
.end method

.method private static ShowKeyboardInternal(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;Landroid/view/View;Ljava/lang/String;III)V
    .registers 15

    :try_start_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->b:Landroid/app/Activity;

    new-instance v8, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;

    move-object v1, v8

    move v2, p4

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$b;-><init>(ILcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;ILjava/lang/String;Landroid/view/View;I)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public static getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    return-object v0
.end method

.method public static isKeyboardVisible()Z
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->b:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$c;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard$c;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v0, v2, :cond_16

    const/16 v0, 0x42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v0, v2, :cond_1a

    :cond_16
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->HideKeyboard()V

    return v1

    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v0, v2, :cond_16

    const/16 v0, 0x42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v0, v2, :cond_1a

    :cond_16
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->HideKeyboard()V

    return v1

    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->b:Landroid/app/Activity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_11

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1e

    :cond_11
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V

    :goto_1e
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeSendKeyboardData(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

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
