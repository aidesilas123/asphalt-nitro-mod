###### Class com.pgl.ssdk.h (com.pgl.ssdk.h)
.class public final Lcom/pgl/ssdk/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static f:Lcom/pgl/ssdk/h;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:I

.field private c:I

.field private d:[F

.field private e:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/ssdk/h;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/ssdk/h;->c:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pgl/ssdk/h;->d:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_25

    :try_start_1b
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/pgl/ssdk/h;->a:Landroid/hardware/SensorManager;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_25

    :catchall_25
    :cond_25
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pgl/ssdk/h;
    .registers 3

    sget-object v0, Lcom/pgl/ssdk/h;->f:Lcom/pgl/ssdk/h;

    if-nez v0, :cond_17

    const-class v0, Lcom/pgl/ssdk/h;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/ssdk/h;->f:Lcom/pgl/ssdk/h;

    if-nez v1, :cond_12

    new-instance v1, Lcom/pgl/ssdk/h;

    invoke-direct {v1, p0}, Lcom/pgl/ssdk/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pgl/ssdk/h;->f:Lcom/pgl/ssdk/h;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/pgl/ssdk/h;->f:Lcom/pgl/ssdk/h;

    return-object p0
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pgl/ssdk/h;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_14

    iget v1, p0, Lcom/pgl/ssdk/h;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pgl/ssdk/h;->b:I

    if-nez v1, :cond_14

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_14
    :cond_14
    :goto_14
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_75

    :try_start_4
    iget-object v3, p0, Lcom/pgl/ssdk/h;->a:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_23

    iget v4, p0, Lcom/pgl/ssdk/h;->b:I

    if-nez v4, :cond_1a

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/pgl/ssdk/h;->a:Landroid/hardware/SensorManager;

    const/4 v5, 0x3

    invoke-virtual {v4, p0, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_23

    :cond_1a
    iget v3, p0, Lcom/pgl/ssdk/h;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/pgl/ssdk/h;->b:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_23
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    goto :goto_23

    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit p0

    throw v3

    :catch_23
    :cond_23
    :goto_23
    monitor-exit p0

    monitor-enter p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_75

    const/4 v3, 0x0

    :goto_26
    :try_start_26
    iget v4, p0, Lcom/pgl/ssdk/h;->c:I

    if-nez v4, :cond_36

    const/16 v4, 0xa

    if-ge v3, v4, :cond_36

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_26

    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_72

    :try_start_37
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.0"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pgl/ssdk/h;->d:[F

    aget v5, v5, v1

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pgl/ssdk/h;->d:[F

    aget v2, v5, v2

    float-to-double v5, v2

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pgl/ssdk/h;->d:[F

    aget v0, v2, v0

    float-to-double v5, v0

    :goto_6a
    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_71
    .catchall {:try_start_37 .. :try_end_71} :catchall_ae

    goto :goto_a9

    :catchall_72
    move-exception v3

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v3
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    :try_start_75
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.0"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pgl/ssdk/h;->d:[F

    aget v5, v5, v1

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pgl/ssdk/h;->d:[F

    aget v2, v5, v2

    float-to-double v5, v2

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pgl/ssdk/h;->d:[F

    aget v0, v2, v0

    float-to-double v5, v0

    goto :goto_6a

    :goto_a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_75 .. :try_end_ad} :catchall_ae

    goto :goto_af

    :catchall_ae
    const/4 v0, 0x0

    :goto_af
    invoke-direct {p0}, Lcom/pgl/ssdk/h;->c()V

    iput v1, p0, Lcom/pgl/ssdk/h;->c:I

    if-nez v0, :cond_b7

    return-void

    :cond_b7
    iget-object v1, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_bc
    iget-object v0, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_da

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    add-int/lit8 v3, v0, -0xa

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;
    :try_end_da
    .catchall {:try_start_bc .. :try_end_da} :catchall_da

    :catchall_da
    :cond_da
    return-void
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    iget-object v1, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_56

    if-gtz v1, :cond_d

    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_56

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/pgl/ssdk/h;->e:Ljava/util/List;

    add-int/lit8 v5, v1, -0xa

    if-lez v5, :cond_22

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    invoke-interface {v4, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    :goto_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_54

    :catchall_54
    monitor-exit p0

    return-object v0

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/pgl/ssdk/h;->d:[F

    const/4 p1, 0x1

    iput p1, p0, Lcom/pgl/ssdk/h;->c:I

    return-void
.end method
