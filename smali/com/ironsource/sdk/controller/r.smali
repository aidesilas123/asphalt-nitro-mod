###### Class com.json.sdk.controller.r (com.ironsource.sdk.controller.r)
.class Lcom/ironsource/sdk/controller/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sget-object v0, Lcom/ironsource/q5;->a:Lcom/ironsource/q5;

    new-instance v1, Lcom/ironsource/sdk/controller/r$a;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/r$a;-><init>(Landroid/media/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/q5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sget-object v0, Lcom/ironsource/q5;->a:Lcom/ironsource/q5;

    new-instance v1, Lcom/ironsource/sdk/controller/r$b;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/r$b;-><init>(Landroid/media/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/q5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/media/AudioManager;)V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    return-void
.end method

.method static synthetic c(Landroid/media/AudioManager;)V
    .registers 1

    invoke-static {p0}, Lcom/ironsource/sdk/controller/r;->b(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic d(Landroid/media/AudioManager;)V
    .registers 1

    invoke-static {p0}, Lcom/ironsource/sdk/controller/r;->e(Landroid/media/AudioManager;)V

    return-void
.end method

.method private static e(Landroid/media/AudioManager;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void
.end method
