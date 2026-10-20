###### Class com.hyprmx.android.sdk.activity.w0 (com.hyprmx.android.sdk.activity.w0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/w0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/w0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;I)V

    return-void
.end method
