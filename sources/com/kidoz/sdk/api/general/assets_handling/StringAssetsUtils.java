package com.kidoz.sdk.api.general.assets_handling;

import android.content.Context;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class StringAssetsUtils {
    public static final String PLD_TITLE_ACTIVATE = "parentalLockDialogTitleActivate";
    public static final String PLD_TITLE_DEACTIVATE = "parentalLockDialogTitleDeActivate";
    public static final String PLD_TITLE_FOR_GOOGLE_PLAY = "parentalLockDialogTitleForGooglePlay";
    public static final String PLD_TITLE_GOOGLE_PLAY_GATE_NEW = "parentalLockDialogMessageGooglePlayGateNew";
    public static final String PLD_TITLE_LOCK_ACTIVATED = "parentalLockDialogLockActivatedTitle";
    public static final String PLD_TITLE_LOCK_ACTIVATION_NEW = "parentalLockDialogMessageParentalLockActivationNew";
    public static final String PLD_TITLE_LOCK_DEACTIVATED = "parentalLockDialogLockDeactivatedTitle";
    public static final String PLD_TITLE_LOCK_DEACTIVATION_NEW = "parentalLockDialogMessageParentalLockDeactivationNew";
    public static final String PLD_TITLE_WRONG_SELECTION = "parentalLockDialogWrongSelection";
    public static final String PLD_TITLE_WRONG_SELECTION_TRY_AGAIN = "parentalLockDialogWrongSelectionTryAgain";
    private static final String TAG = "StringAssetsUtils";
    private static HashMap<String, String> mLang;

    public static String getLangString(Context context, String str) {
        initStrings(context);
        return mLang.containsKey(str) ? mLang.get(str) : "";
    }

    private static void initStrings(Context context) {
        HashMap<String, String> map = mLang;
        if (map == null || map.isEmpty()) {
            mLang = new HashMap<>();
            JSONObject jSONObjectLoadStringsFile = loadStringsFile(context);
            if (jSONObjectLoadStringsFile == null) {
                jSONObjectLoadStringsFile = new JSONObject();
            }
            mLang.put(PLD_TITLE_ACTIVATE, jSONObjectLoadStringsFile.optString(PLD_TITLE_ACTIVATE, "Activate\nParental Lock?"));
            mLang.put(PLD_TITLE_DEACTIVATE, jSONObjectLoadStringsFile.optString(PLD_TITLE_DEACTIVATE, "Deactivate\nParental Lock?"));
            mLang.put(PLD_TITLE_FOR_GOOGLE_PLAY, jSONObjectLoadStringsFile.optString(PLD_TITLE_FOR_GOOGLE_PLAY, "Parental Lock"));
            mLang.put(PLD_TITLE_WRONG_SELECTION, jSONObjectLoadStringsFile.optString(PLD_TITLE_WRONG_SELECTION, "Wrong selection..."));
            mLang.put(PLD_TITLE_WRONG_SELECTION_TRY_AGAIN, jSONObjectLoadStringsFile.optString(PLD_TITLE_WRONG_SELECTION_TRY_AGAIN, "TRY AGAIN"));
            mLang.put(PLD_TITLE_LOCK_ACTIVATED, jSONObjectLoadStringsFile.optString(PLD_TITLE_LOCK_ACTIVATED, "LOCK ACTIVATED"));
            mLang.put(PLD_TITLE_LOCK_DEACTIVATED, jSONObjectLoadStringsFile.optString(PLD_TITLE_LOCK_DEACTIVATED, "LOCK DEACTIVATED"));
            mLang.put(PLD_TITLE_LOCK_ACTIVATION_NEW, jSONObjectLoadStringsFile.optString(PLD_TITLE_LOCK_ACTIVATION_NEW, "To block external links solve the equation"));
            mLang.put(PLD_TITLE_LOCK_DEACTIVATION_NEW, jSONObjectLoadStringsFile.optString(PLD_TITLE_LOCK_DEACTIVATION_NEW, "To enable external links solve the equation"));
            mLang.put(PLD_TITLE_GOOGLE_PLAY_GATE_NEW, jSONObjectLoadStringsFile.optString(PLD_TITLE_GOOGLE_PLAY_GATE_NEW, "Solve the equation to access content"));
        }
    }

    public static JSONObject loadStringsFile(Context context) {
        StringBuilder sb = new StringBuilder();
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.openFileInput("StringsFile"));
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                sb.append(line);
            }
            inputStreamReader.close();
            return new JSONObject(sb.toString());
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to load strings file: " + e2.getMessage());
            return null;
        }
    }

    public static boolean parseStrings(Context context, String str) {
        JSONObject jSONObjectOptJSONObject;
        if (str == null) {
            return false;
        }
        try {
            JSONObject jSONObjectOptJSONObject2 = new JSONObject(str).optJSONObject("data");
            if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("strings")) == null) {
                return false;
            }
            saveStringsFile(context, jSONObjectOptJSONObject);
            return false;
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to parse strings: " + e2.getMessage());
            return false;
        }
    }

    private static void saveStringsFile(Context context, JSONObject jSONObject) {
        try {
            File file = new File(context.getFilesDir(), "StringsFile");
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("StringsFile", 0);
            fileOutputStreamOpenFileOutput.write(jSONObject.toString().getBytes());
            fileOutputStreamOpenFileOutput.close();
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to create strings file: " + e2.getMessage());
        }
    }
}
