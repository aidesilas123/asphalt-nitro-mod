###### Class com.hyprmx.android.sdk.header.h (com.hyprmx.android.sdk.header.h)
.class public final synthetic Lcom/hyprmx/android/sdk/header/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/header/h;->a:Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/header/h;->a:Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;->c(Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;Landroid/view/View;)V

    return-void
.end method
