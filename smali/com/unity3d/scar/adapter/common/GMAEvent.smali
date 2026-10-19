###### Class com.unity3d.scar.adapter.common.GMAEvent (com.unity3d.scar.adapter.common.GMAEvent)
.class public final enum Lcom/unity3d/scar/adapter/common/GMAEvent;
.super Ljava/lang/Enum;
.source "GMAEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/scar/adapter/common/GMAEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum B:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum C:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum D:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum E:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum F:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field private static final synthetic G:[Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum a:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum b:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum c:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum d:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum e:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum f:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum g:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum h:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum i:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum j:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum k:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum l:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum m:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum n:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum o:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum p:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum q:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum r:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum s:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum t:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum u:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum v:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum w:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum x:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum y:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum z:Lcom/unity3d/scar/adapter/common/GMAEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 34

    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v1, "SCAR_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->a:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v3, "SCAR_NOT_PRESENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->b:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v3, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v5, "ALREADY_INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->c:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v5, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v7, "INIT_SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/scar/adapter/common/GMAEvent;->d:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v7, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v9, "INIT_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/scar/adapter/common/GMAEvent;->e:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v9, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v11, "VERSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/scar/adapter/common/GMAEvent;->f:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v11, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v13, "SCAR_UNSUPPORTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/scar/adapter/common/GMAEvent;->g:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v13, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v15, "SIGNALS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/scar/adapter/common/GMAEvent;->h:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v15, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v14, "SIGNALS_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/scar/adapter/common/GMAEvent;->i:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v14, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v12, "INTERNAL_SIGNALS_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/scar/adapter/common/GMAEvent;->j:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v12, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v10, "AD_LOADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/scar/adapter/common/GMAEvent;->k:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v10, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v8, "INTERSTITIAL_IMPRESSION_RECORDED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/scar/adapter/common/GMAEvent;->l:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v8, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "REWARDED_IMPRESSION_RECORDED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/scar/adapter/common/GMAEvent;->m:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v6, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v4, "INTERNAL_LOAD_ERROR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/scar/adapter/common/GMAEvent;->n:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "QUERY_NOT_FOUND_ERROR"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->o:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "LOAD_ERROR"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->p:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v6, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v4, "NO_AD_ERROR"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/scar/adapter/common/GMAEvent;->q:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "AD_STARTED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->r:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "INTERNAL_SHOW_ERROR"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->s:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v6, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v4, "AD_NOT_LOADED_ERROR"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/scar/adapter/common/GMAEvent;->t:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "REWARDED_SHOW_ERROR"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->u:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "INTERSTITIAL_SHOW_ERROR"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->v:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v6, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v4, "FIRST_QUARTILE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/scar/adapter/common/GMAEvent;->w:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v4, "MIDPOINT"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->x:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "THIRD_QUARTILE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->y:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "LAST_QUARTILE"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->z:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "AD_EARNED_REWARD"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->A:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "AD_CLICKED"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->B:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "AD_SKIPPED"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->C:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "AD_LEFT_APPLICATION"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->D:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "AD_CLOSED"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->E:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v6, "METHOD_ERROR"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->F:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->G:[Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAEvent;
    .registers 2

    const-class v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/scar/adapter/common/GMAEvent;
    .registers 1

    sget-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->G:[Lcom/unity3d/scar/adapter/common/GMAEvent;

    invoke-virtual {v0}, [Lcom/unity3d/scar/adapter/common/GMAEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-object v0
.end method
