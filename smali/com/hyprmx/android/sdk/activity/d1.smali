###### Class com.hyprmx.android.sdk.activity.d1 (com.hyprmx.android.sdk.activity.d1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final synthetic a:Lcom/hyprmx/android/sdk/activity/d1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/activity/d1;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/activity/d1;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/activity/d1;->a:Lcom/hyprmx/android/sdk/activity/d1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a(Landroid/content/DialogInterface;)V

    return-void
.end method
