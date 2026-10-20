###### Class com.hyprmx.android.sdk.graphics.e (com.hyprmx.android.sdk.graphics.e)
.class public final synthetic Lcom/hyprmx/android/sdk/graphics/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/graphics/e;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/graphics/e;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/graphics/d;->a(Lkotlin/jvm/b/l;Landroid/view/View;)V

    return-void
.end method
