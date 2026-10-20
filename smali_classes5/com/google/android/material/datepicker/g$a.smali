###### Class com.google.android.material.datepicker.g.a (com.google.android.material.datepicker.g$a)
.class Lcom/google/android/material/datepicker/g$a;
.super Lcom/google/android/material/datepicker/j;
.source "MaterialTextInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/j<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/g;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/datepicker/g$a;->a:Lcom/google/android/material/datepicker/g;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/g$a;->a:Lcom/google/android/material/datepicker/g;

    iget-object v0, v0, Lcom/google/android/material/datepicker/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/j;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/j;->a()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/datepicker/g$a;->a:Lcom/google/android/material/datepicker/g;

    iget-object v0, v0, Lcom/google/android/material/datepicker/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/j;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/j;->b(Ljava/lang/Object;)V

    goto :goto_8

    :cond_18
    return-void
.end method
