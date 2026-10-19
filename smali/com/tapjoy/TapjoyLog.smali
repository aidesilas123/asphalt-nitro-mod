###### Class com.tapjoy.TapjoyLog (com.tapjoy.TapjoyLog)
.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TapjoyLog:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/tapjoy/TapjoyLog;->b:I

    if-gt v0, p2, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_3a

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    if-gt v0, v2, :cond_3d

    mul-int/lit16 v2, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x1000

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_32
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_3a
    invoke-static {p2, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "TapjoyLog"

    if-nez p1, :cond_18

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/tapjoy/TapjoyAppSettings;->d:Ljava/lang/String;

    if-eqz p1, :cond_18

    const-string p0, "setLoggingLevel -- log setting already persisted"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    const-string p1, "internal"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p0, 0x2

    sput p0, Lcom/tapjoy/TapjoyLog;->b:I

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/tapjoy/internal/p3;

    invoke-direct {p1}, Lcom/tapjoy/internal/p3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_58

    :cond_35
    const-string p1, "debug_on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    const/4 p0, 0x4

    sput p0, Lcom/tapjoy/TapjoyLog;->b:I

    goto :goto_58

    :cond_41
    const-string p1, "debug_off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x6

    if-eqz p1, :cond_4d

    sput v1, Lcom/tapjoy/TapjoyLog;->b:I

    goto :goto_58

    :cond_4d
    const-string p1, "unrecognized loggingLevel: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v1, Lcom/tapjoy/TapjoyLog;->b:I

    :goto_58
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "logThreshold="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/tapjoy/TapjoyLog;->b:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    .registers 4

    if-eqz p1, :cond_17

    sget v0, Lcom/tapjoy/TapjoyLog;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->a()Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    if-eq v0, v1, :cond_17

    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_17
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v0, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static isLoggingEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    return v0
.end method

.method public static setDebugEnabled(Z)V
    .registers 2

    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->a:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const-string p0, "debug_on"

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_b
    const-string p0, "debug_off"

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    :goto_10
    return-void
.end method

.method public static setInternalLogging(Z)V
    .registers 2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    const-string v0, "internal"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
