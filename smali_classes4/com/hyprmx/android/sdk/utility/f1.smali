###### Class com.hyprmx.android.sdk.utility.f1 (com.hyprmx.android.sdk.utility.f1)
.class public final synthetic Lcom/hyprmx/android/sdk/utility/f1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/utility/h;

.field public final synthetic b:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/utility/h;Lkotlin/jvm/b/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/f1;->a:Lcom/hyprmx/android/sdk/utility/h;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/f1;->b:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/f1;->a:Lcom/hyprmx/android/sdk/utility/h;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/f1;->b:Lkotlin/jvm/b/a;

    invoke-static {v0, v1, p1, p2}, Lcom/hyprmx/android/sdk/utility/h;->a(Lcom/hyprmx/android/sdk/utility/h;Lkotlin/jvm/b/a;Landroid/content/DialogInterface;I)V

    return-void
.end method
