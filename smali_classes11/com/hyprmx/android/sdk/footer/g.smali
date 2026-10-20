###### Class com.hyprmx.android.sdk.footer.g (com.hyprmx.android.sdk.footer.g)
.class public final synthetic Lcom/hyprmx/android/sdk/footer/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/footer/FooterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/footer/FooterFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/footer/g;->a:Lcom/hyprmx/android/sdk/footer/FooterFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/g;->a:Lcom/hyprmx/android/sdk/footer/FooterFragment;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/footer/FooterFragment;->b(Lcom/hyprmx/android/sdk/footer/FooterFragment;Landroid/view/View;)V

    return-void
.end method
