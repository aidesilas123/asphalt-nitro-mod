###### Class com.hyprmx.android.sdk.activity.t0 (com.hyprmx.android.sdk.activity.t0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/t0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/t0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    invoke-static {v0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;Landroid/content/DialogInterface;I)V

    return-void
.end method
