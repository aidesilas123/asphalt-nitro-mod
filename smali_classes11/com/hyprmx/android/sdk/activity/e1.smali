###### Class com.hyprmx.android.sdk.activity.e1 (com.hyprmx.android.sdk.activity.e1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/e1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/e1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/e1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/e1;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
