###### Class com.google.android.material.textfield.d.b (com.google.android.material.textfield.d$b)
.class Lcom/google/android/material/textfield/d$b;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d;->L(Landroid/widget/AutoCompleteTextView;)V
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

    iput-object p1, p0, Lcom/google/android/material/textfield/d$b;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/textfield/d$b;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0}, Lcom/google/android/material/textfield/d;->u(Lcom/google/android/material/textfield/d;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/d$b;->a:Lcom/google/android/material/textfield/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->r(Lcom/google/android/material/textfield/d;Z)V

    return-void
.end method
