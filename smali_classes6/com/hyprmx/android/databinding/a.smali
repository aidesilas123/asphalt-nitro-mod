###### Class com.hyprmx.android.databinding.a (com.hyprmx.android.databinding.a)
.class public final Lcom/hyprmx/android/databinding/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/hyprmx/android/databinding/b;

.field public final c:Lcom/hyprmx/android/databinding/c;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/hyprmx/android/databinding/b;Lcom/hyprmx/android/databinding/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/databinding/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/hyprmx/android/databinding/a;->b:Lcom/hyprmx/android/databinding/b;

    iput-object p3, p0, Lcom/hyprmx/android/databinding/a;->c:Lcom/hyprmx/android/databinding/c;

    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/databinding/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
