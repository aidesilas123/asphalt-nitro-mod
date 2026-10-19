###### Class com.hyprmx.android.sdk.activity.b1 (com.hyprmx.android.sdk.activity.b1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

.field public final synthetic b:Lcom/hyprmx/android/sdk/api/data/o;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Lcom/hyprmx/android/sdk/api/data/o;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/b1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/b1;->b:Lcom/hyprmx/android/sdk/api/data/o;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/activity/b1;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/b1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/b1;->b:Lcom/hyprmx/android/sdk/api/data/o;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/b1;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Lcom/hyprmx/android/sdk/api/data/o;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
