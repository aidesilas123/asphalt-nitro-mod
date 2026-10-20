###### Class com.unity3d.services.core.configuration.ExperimentsReader (com.unity3d.services.core.configuration.ExperimentsReader)
.class public Lcom/unity3d/services/core/configuration/ExperimentsReader;
.super Ljava/lang/Object;
.source "ExperimentsReader.java"


# instance fields
.field private _localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

.field private _remoteExperiments:Lcom/unity3d/services/core/configuration/IExperiments;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentlyActiveExperiments()Lcom/unity3d/services/core/configuration/IExperiments;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_remoteExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

    if-nez v1, :cond_10

    new-instance v0, Lcom/unity3d/services/core/configuration/Experiments;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Experiments;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_44

    monitor-exit p0

    return-object v0

    :cond_10
    if-nez v0, :cond_16

    :try_start_12
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_44

    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

    if-nez v0, :cond_21

    new-instance v0, Lcom/unity3d/services/core/configuration/Experiments;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Experiments;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

    :cond_21
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

    invoke-interface {v0}, Lcom/unity3d/services/core/configuration/IExperiments;->getNextSessionExperiments()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_remoteExperiments:Lcom/unity3d/services/core/configuration/IExperiments;

    invoke-interface {v1}, Lcom/unity3d/services/core/configuration/IExperiments;->getCurrentSessionExperiments()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_44

    :try_start_2d
    new-instance v2, Lcom/unity3d/services/core/configuration/Experiments;

    invoke-static {v0, v1}, Lcom/unity3d/services/core/misc/Utilities;->mergeJsonObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/unity3d/services/core/configuration/Experiments;-><init>(Lorg/json/JSONObject;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_36} :catch_38
    .catchall {:try_start_2d .. :try_end_36} :catchall_44

    monitor-exit p0

    return-object v2

    :catch_38
    :try_start_38
    const-string v0, "Couldn\'t get active experiments, reverting to default experiments"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/services/core/configuration/Experiments;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Experiments;-><init>()V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-object v0

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateLocalExperiments(Lcom/unity3d/services/core/configuration/IExperiments;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_localExperiments:Lcom/unity3d/services/core/configuration/IExperiments;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateRemoteExperiments(Lcom/unity3d/services/core/configuration/IExperiments;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/ExperimentsReader;->_remoteExperiments:Lcom/unity3d/services/core/configuration/IExperiments;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
