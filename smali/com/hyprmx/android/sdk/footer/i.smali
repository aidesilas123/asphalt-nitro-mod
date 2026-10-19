###### Class com.hyprmx.android.sdk.footer.i (com.hyprmx.android.sdk.footer.i)
.class public final synthetic Lcom/hyprmx/android/sdk/footer/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/footer/FooterFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/footer/FooterFragment;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/footer/i;->a:Lcom/hyprmx/android/sdk/footer/FooterFragment;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/footer/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/i;->a:Lcom/hyprmx/android/sdk/footer/FooterFragment;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/footer/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/hyprmx/android/sdk/footer/FooterFragment;->d(Lcom/hyprmx/android/sdk/footer/FooterFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
