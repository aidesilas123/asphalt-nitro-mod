###### Class com.fyber.marketplace.fairbid.impl.b.a (com.fyber.marketplace.fairbid.impl.b$a)
.class public final enum Lcom/fyber/marketplace/fairbid/impl/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/marketplace/fairbid/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/marketplace/fairbid/impl/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum b:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum c:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum d:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum e:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum f:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum g:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum h:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum i:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum j:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum k:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum l:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum m:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum n:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum o:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum p:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field public static final enum q:Lcom/fyber/marketplace/fairbid/impl/b$a;

.field private static final synthetic r:[Lcom/fyber/marketplace/fairbid/impl/b$a;


# instance fields
.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 33

    new-instance v6, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v5, Ljava/lang/Integer;

    const-string v1, "KEY_AVAILABLE_DISK_SPACE"

    const/4 v2, 0x0

    const-string v3, "available_disk"

    const-string v4, "dsk_a"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v6, Lcom/fyber/marketplace/fairbid/impl/b$a;->a:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v0, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v12, Ljava/lang/Boolean;

    const-string v8, "KEY_HEADSET"

    const/4 v9, 0x1

    const-string v10, "headset"

    const-string v11, "headset"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/fyber/marketplace/fairbid/impl/b$a;->b:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v1, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v18, Ljava/lang/Boolean;

    const-string v14, "KEY_BATTERY_CONNECTED"

    const/4 v15, 0x2

    const-string v16, "battery_charging"

    const-string v17, "btry_c"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Lcom/fyber/marketplace/fairbid/impl/b$a;->c:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v2, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v12, Ljava/lang/Integer;

    const-string v8, "KEY_BATTERY_LEVEL"

    const/4 v9, 0x3

    const-string v10, "battery_level"

    const-string v11, "btry_l"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lcom/fyber/marketplace/fairbid/impl/b$a;->d:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v3, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v18, Ljava/lang/Boolean;

    const-string v14, "KEY_BLUETOOTH_CONNECTED"

    const/4 v15, 0x4

    const-string v16, "bluetooth_connected"

    const-string v17, "bt_con"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lcom/fyber/marketplace/fairbid/impl/b$a;->e:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v4, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v12, Ljava/lang/Integer;

    const-string v8, "KEY_ANDROID_LEVEL"

    const/4 v9, 0x5

    const-string v10, "d_api"

    const-string v11, "d_api"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v4, Lcom/fyber/marketplace/fairbid/impl/b$a;->f:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v5, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v18, Ljava/lang/Boolean;

    const-string v14, "KEY_AIRPLANE_MODE"

    const/4 v15, 0x6

    const-string v16, "apnm"

    const-string v17, "apnm"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v5, Lcom/fyber/marketplace/fairbid/impl/b$a;->g:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v13, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v12, Ljava/lang/Boolean;

    const-string v8, "KEY_DO_NOT_DISTURB"

    const/4 v9, 0x7

    const-string v10, "dnd"

    const-string v11, "dnd"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v13, Lcom/fyber/marketplace/fairbid/impl/b$a;->h:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v7, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v19, Ljava/lang/Boolean;

    const-string v15, "KEY_IS_MUTED"

    const/16 v16, 0x8

    const-string v17, "is_muted"

    const-string v18, "is_muted"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v7, Lcom/fyber/marketplace/fairbid/impl/b$a;->i:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v8, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v25, Ljava/lang/Integer;

    const-string v21, "KEY_TOTAL_DISK_SPACE"

    const/16 v22, 0x9

    const-string v23, "total_disk"

    const-string v24, "dsk_t"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v8, Lcom/fyber/marketplace/fairbid/impl/b$a;->j:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v9, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v19, Ljava/lang/Integer;

    const-string v15, "KEY_TIME_OF_DAY"

    const/16 v16, 0xa

    const-string v17, "time_difference"

    const-string v18, "tod"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v9, Lcom/fyber/marketplace/fairbid/impl/b$a;->k:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v10, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v25, Ljava/lang/Boolean;

    const-string v21, "KEY_LOW_POWER_MODE"

    const/16 v22, 0xb

    const-string v23, "low_power_mode"

    const-string v24, "low_power_mode"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v10, Lcom/fyber/marketplace/fairbid/impl/b$a;->l:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v11, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v19, Ljava/lang/Boolean;

    const-string v15, "KEY_DARK_MODE"

    const/16 v16, 0xc

    const-string v17, "dark_mode"

    const-string v18, "dark_mode"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v11, Lcom/fyber/marketplace/fairbid/impl/b$a;->m:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v12, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v25, Ljava/lang/String;

    const-string v21, "KEY_LAST_DOMAIN_SHOWED"

    const/16 v22, 0xd

    const-string v23, "last_adomain"

    const-string v24, "ldomain"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v12, Lcom/fyber/marketplace/fairbid/impl/b$a;->n:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v20, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v19, Ljava/lang/String;

    const-string v15, "KEY_LAST_BUNDLE_SHOWED"

    const/16 v16, 0xe

    const-string v17, "last_bundle"

    const-string v18, "lbundle"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v20, Lcom/fyber/marketplace/fairbid/impl/b$a;->o:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v14, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v26, Ljava/lang/String;

    const-string v22, "KEY_IGNITE_VERSION"

    const/16 v23, 0xf

    const-string v24, "version"

    const-string v25, "ignitev"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v14, Lcom/fyber/marketplace/fairbid/impl/b$a;->p:Lcom/fyber/marketplace/fairbid/impl/b$a;

    new-instance v15, Lcom/fyber/marketplace/fairbid/impl/b$a;

    const-class v32, Ljava/lang/String;

    const-string v28, "KEY_IGNITE_PACKAGE_NAME"

    const/16 v29, 0x10

    const-string v30, "package_name"

    const-string v31, "ignitep"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/fyber/marketplace/fairbid/impl/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v15, Lcom/fyber/marketplace/fairbid/impl/b$a;->q:Lcom/fyber/marketplace/fairbid/impl/b$a;

    move-object/from16 v16, v15

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/fyber/marketplace/fairbid/impl/b$a;

    const/16 v17, 0x0

    aput-object v6, v15, v17

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    sput-object v15, Lcom/fyber/marketplace/fairbid/impl/b$a;->r:[Lcom/fyber/marketplace/fairbid/impl/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/marketplace/fairbid/impl/b$a;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/marketplace/fairbid/impl/b$a;->t:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/marketplace/fairbid/impl/b$a;->u:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/marketplace/fairbid/impl/b$a;
    .registers 2

    const-class v0, Lcom/fyber/marketplace/fairbid/impl/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/marketplace/fairbid/impl/b$a;

    return-object p0
.end method

.method public static values()[Lcom/fyber/marketplace/fairbid/impl/b$a;
    .registers 1

    sget-object v0, Lcom/fyber/marketplace/fairbid/impl/b$a;->r:[Lcom/fyber/marketplace/fairbid/impl/b$a;

    invoke-virtual {v0}, [Lcom/fyber/marketplace/fairbid/impl/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/marketplace/fairbid/impl/b$a;

    return-object v0
.end method
