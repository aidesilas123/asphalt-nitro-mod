###### Class com.google.android.material.textfield.d.j (com.google.android.material.textfield.d$j)
.class Lcom/google/android/material/textfield/d$j;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/textfield/d$j;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/textfield/d$j;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/google/android/material/textfield/d;->q(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/material/textfield/d$j;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/e;->c:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1c

    const/4 p1, 0x2

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x1

    :goto_1d
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_20
    return-void
.end method
