###### Class com.hyprmx.android.sdk.activity.l0 (com.hyprmx.android.sdk.activity.l0)
.class public final Lcom/hyprmx/android/sdk/activity/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/l0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowAttached()V
    .registers 1

    return-void
.end method

.method public final onWindowDetached()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/l0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;->a:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method
