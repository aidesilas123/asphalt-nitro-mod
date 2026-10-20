###### Class io.didomi.drawable.C1821l4.a.C0495a (io.didomi.sdk.l4$a$a)
.class public final synthetic Lio/didomi/sdk/l4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/l4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lio/didomi/sdk/k$a$b$a$b$b;->values()[Lio/didomi/sdk/k$a$b$a$b$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/didomi/sdk/k$a$b$a$b$b;->d:Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/didomi/sdk/k$a$b$a$b$b;->c:Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/didomi/sdk/k$a$b$a$b$b;->e:Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v4, Lio/didomi/sdk/k$a$b$a$b$b;->f:Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/didomi/sdk/l4$a$a;->a:[I

    invoke-static {}, Lio/didomi/sdk/k$a$b$a$b$a$a;->values()[Lio/didomi/sdk/k$a$b$a$b$a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_34
    sget-object v4, Lio/didomi/sdk/k$a$b$a$b$a$a;->c:Lio/didomi/sdk/k$a$b$a$b$a$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v4, Lio/didomi/sdk/k$a$b$a$b$a$a;->d:Lio/didomi/sdk/k$a$b$a$b$a$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    sput-object v0, Lio/didomi/sdk/l4$a$a;->b:[I

    invoke-static {}, Lio/didomi/iabtcf/decoder/v2/RestrictionType;->values()[Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4d
    sget-object v4, Lio/didomi/iabtcf/decoder/v2/RestrictionType;->NOT_ALLOWED:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_55} :catch_55

    :catch_55
    :try_start_55
    sget-object v1, Lio/didomi/iabtcf/decoder/v2/RestrictionType;->REQUIRE_CONSENT:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v1, Lio/didomi/iabtcf/decoder/v2/RestrictionType;->REQUIRE_LEGITIMATE_INTEREST:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    sput-object v0, Lio/didomi/sdk/l4$a$a;->c:[I

    return-void
.end method
