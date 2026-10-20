###### Class com.bytedance.sdk.openadsdk.multipro.aidl.c (com.bytedance.sdk.openadsdk.multipro.aidl.c)
.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;
.super Ljava/lang/Object;
.source "MapCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:[Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_28

    :cond_f
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->a:Ljava/util/Map;

    :try_start_11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_27

    :catch_27
    return-void

    :cond_28
    :goto_28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 3

    return-void
.end method

.method public deactivate()V
    .registers 1

    return-void
.end method

.method public getBlob(I)[B
    .registers 2

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public getColumnCount()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v0, v0

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    const/4 p1, -0x1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-object p1, v0, p1

    return-object p1

    :cond_a
    const-string p1, ""

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    if-eqz v1, :cond_17

    array-length v2, v1

    if-nez v2, :cond_9

    goto :goto_17

    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->a:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    :goto_17
    return v0
.end method

.method public getDouble(I)D
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    return v0
.end method

.method public getShort(I)S
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getColumnCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_20

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_20
    :goto_20
    const-string p1, ""

    return-object p1
.end method

.method public getType(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBeforeFirst()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLast()Z
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    return v2
.end method

.method public isNull(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public move(I)Z
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public moveToFirst()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    :cond_8
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    const/4 v0, 0x1

    return v0
.end method

.method public moveToLast()Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->b:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    return v1
.end method

.method public moveToNext()Z
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    return v1
.end method

.method public moveToPosition(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public moveToPrevious()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/c;->c:I

    return v1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method

.method public requery()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 3

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method
