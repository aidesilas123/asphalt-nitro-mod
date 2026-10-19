###### Class com.hyprmx.android.sdk.activity.u0 (com.hyprmx.android.sdk.activity.u0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/u0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/u0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/c0;->a(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;Landroid/view/View;)V

    return-void
.end method
