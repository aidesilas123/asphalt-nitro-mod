###### Class com.json.mediationsdk.metadata.MetaData (com.ironsource.mediationsdk.metadata.MetaData)
.class public Lcom/ironsource/mediationsdk/metadata/MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    const/4 p1, 0x0

    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    sget-object v1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMetaDataKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->b:Ljava/util/List;

    return-object v0
.end method

.method public getMetaDataValueType()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.metadata.MetaData.MetaDataValueTypes (com.ironsource.mediationsdk.metadata.MetaData$MetaDataValueTypes)
.class public final enum Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/metadata/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetaDataValueTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_DOUBLE:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_FLOAT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_INT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_LONG:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field private static final synthetic a:[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    new-instance v1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v3, "META_DATA_VALUE_BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    new-instance v3, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v5, "META_DATA_VALUE_INT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_INT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    new-instance v5, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v7, "META_DATA_VALUE_LONG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_LONG:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    new-instance v7, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v9, "META_DATA_VALUE_DOUBLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_DOUBLE:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    new-instance v9, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v11, "META_DATA_VALUE_FLOAT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_FLOAT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->a:[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 1

    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->a:[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object v0
.end method
