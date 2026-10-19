###### Class com.google.android.gms.internal.consent_sdk.zzcm (com.google.android.gms.internal.consent_sdk.zzcm)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzcm;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.1.0"


# instance fields
.field public zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzd:Ljava/util/List;

.field public zze:Ljava/util/List;

.field public zzf:I

.field public zzg:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzf:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzd:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zze:Ljava/util/List;

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzg:I

    return-void
.end method

.method public static zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcm;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcm;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22b

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_230

    goto :goto_68

    :sswitch_22
    const-string v2, "consent_form_payload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x1

    goto :goto_69

    :sswitch_2c
    const-string v2, "request_info_keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x4

    goto :goto_69

    :sswitch_36
    const-string v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x5

    goto :goto_69

    :sswitch_40
    const-string v2, "privacy_options_required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x6

    goto :goto_69

    :sswitch_4a
    const-string v2, "consent_form_base_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x2

    goto :goto_69

    :sswitch_54
    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x3

    goto :goto_69

    :sswitch_5e
    const-string v2, "consent_signal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x0

    goto :goto_69

    :cond_68
    :goto_68
    const/4 v1, -0x1

    :goto_69
    packed-switch v1, :pswitch_data_24e

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :pswitch_70
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x70970855

    if-eq v2, v3, :cond_9b

    const v3, 0x17371b9f

    if-eq v2, v3, :cond_91

    const v3, 0x19d1382a

    if-eq v2, v3, :cond_88

    goto :goto_a5

    :cond_88
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    goto :goto_a6

    :cond_91
    const-string v2, "REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v7, 0x1

    goto :goto_a6

    :cond_9b
    const-string v2, "NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v7, 0x2

    goto :goto_a6

    :cond_a5
    :goto_a5
    const/4 v7, -0x1

    :goto_a6
    if-eqz v7, :cond_bb

    if-eq v7, v10, :cond_b9

    if-ne v7, v9, :cond_ad

    goto :goto_bc

    :cond_ad
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    const/4 v6, 0x2

    goto :goto_bc

    :cond_bb
    const/4 v6, 0x1

    :goto_bc
    iput v6, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzg:I

    goto/16 :goto_8

    :pswitch_c0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zze:Ljava/util/List;

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_ca
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_171

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/zzcl;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_d8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_167

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7d8028f6

    if-eq v3, v4, :cond_fb

    const v4, 0x5e663ba3

    if-eq v3, v4, :cond_f1

    goto :goto_105

    :cond_f1
    const-string v3, "action_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const/4 v2, 0x0

    goto :goto_106

    :cond_fb
    const-string v3, "args_json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const/4 v2, 0x1

    goto :goto_106

    :cond_105
    :goto_105
    const/4 v2, -0x1

    :goto_106
    if-eqz v2, :cond_115

    if-eq v2, v10, :cond_10e

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_d8

    :cond_10e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zza:Ljava/lang/String;

    goto :goto_d8

    :cond_115
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x3d3be2d

    if-eq v3, v4, :cond_141

    const v4, 0x4f05fbf

    if-eq v3, v4, :cond_137

    const v4, 0x6ea5670e

    if-eq v3, v4, :cond_12d

    goto :goto_14b

    :cond_12d
    const-string v3, "UNKNOWN_ACTION_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    const/4 v3, 0x0

    goto :goto_14c

    :cond_137
    const-string v3, "WRITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    const/4 v3, 0x1

    goto :goto_14c

    :cond_141
    const-string v3, "CLEAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    const/4 v3, 0x2

    goto :goto_14c

    :cond_14b
    :goto_14b
    const/4 v3, -0x1

    :goto_14c
    if-eqz v3, :cond_162

    if-eq v3, v10, :cond_160

    if-ne v3, v9, :cond_154

    const/4 v2, 0x3

    goto :goto_163

    :cond_154
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_160
    const/4 v2, 0x2

    goto :goto_163

    :cond_162
    const/4 v2, 0x1

    :goto_163
    iput v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzb:I

    goto/16 :goto_d8

    :cond_167
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zze:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ca

    :cond_171
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_8

    :pswitch_176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzd:Ljava/util/List;

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_180
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_190

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_180

    :cond_190
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_8

    :pswitch_195
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzc:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_19d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzb:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1a5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zza:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1ad
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v11, 0x7

    sparse-switch v2, :sswitch_data_260

    goto :goto_209

    :sswitch_1ba
    const-string v2, "CONSENT_SIGNAL_NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x5

    goto :goto_20a

    :sswitch_1c4
    const-string v2, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x1

    goto :goto_20a

    :sswitch_1ce
    const-string v2, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x3

    goto :goto_20a

    :sswitch_1d8
    const-string v2, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x7

    goto :goto_20a

    :sswitch_1e2
    const-string v2, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x2

    goto :goto_20a

    :sswitch_1ec
    const-string v2, "CONSENT_SIGNAL_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    goto :goto_20a

    :sswitch_1f5
    const-string v2, "CONSENT_SIGNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x6

    goto :goto_20a

    :sswitch_1ff
    const-string v2, "CONSENT_SIGNAL_COLLECT_CONSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    const/4 v7, 0x4

    goto :goto_20a

    :cond_209
    :goto_209
    const/4 v7, -0x1

    :goto_20a
    packed-switch v7, :pswitch_data_282

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_219
    const/16 v3, 0x8

    goto :goto_227

    :pswitch_21c
    const/4 v3, 0x7

    goto :goto_227

    :pswitch_21e
    const/4 v3, 0x6

    goto :goto_227

    :pswitch_220
    const/4 v3, 0x5

    goto :goto_227

    :pswitch_222
    const/4 v3, 0x3

    goto :goto_227

    :pswitch_224
    const/4 v3, 0x2

    goto :goto_227

    :pswitch_226
    const/4 v3, 0x1

    :goto_227
    :pswitch_227
    iput v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzf:I

    goto/16 :goto_8

    :cond_22b
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0

    nop

    :sswitch_data_230
    .sparse-switch
        -0x774ac593 -> :sswitch_5e
        -0x738f0f30 -> :sswitch_54
        -0x6e5c3749 -> :sswitch_4a
        -0x4ef2d809 -> :sswitch_40
        -0x453fb703 -> :sswitch_36
        -0x3ad17acb -> :sswitch_2c
        -0x2f244ae8 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_1ad
        :pswitch_1a5
        :pswitch_19d
        :pswitch_195
        :pswitch_176
        :pswitch_c0
        :pswitch_70
    .end packed-switch

    :sswitch_data_260
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_1ff
        -0x755d1a4a -> :sswitch_1f5
        -0x4b527788 -> :sswitch_1ec
        -0x38e1da9b -> :sswitch_1e2
        -0x36c1e70c -> :sswitch_1d8
        0x19984e10 -> :sswitch_1ce
        0x1be36b13 -> :sswitch_1c4
        0x66d8a81d -> :sswitch_1ba
    .end sparse-switch

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_226
        :pswitch_224
        :pswitch_222
        :pswitch_227
        :pswitch_220
        :pswitch_21e
        :pswitch_21c
        :pswitch_219
    .end packed-switch
.end method
