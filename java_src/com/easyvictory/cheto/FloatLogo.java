package com.easyvictory.cheto;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import androidx.compose.runtime.ComposerKt;
import androidx.core.view.PointerIconCompat;
import com.google.android.material.card.MaterialCardViewHelper;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class FloatLogo {
    private static FloatLogo Instance;
    private Switch adBlock;
    private String angleStepSizeRText;
    private Spinner aqHumanizationMode;
    private Spinner aqMode;
    private Spinner autoAction;
    EditText autoQueueLimit;
    private Switch choosePocketsManually;
    private TextView chosenTable;
    private TextView chosenTable2;
    private TextView closeButton;
    private Switch drawPrediction;
    private Switch drawShotState;
    private Switch enableAQ;
    private Button exportSettings;
    private Switch extraHumanization;
    private Switch fastAutoPlayMode;
    private Switch fastAutoQueueMode;
    private Switch findBestShot;
    private View floatingView;
    private Switch freezeLines;
    private SeekBar gAngleStepSize;
    private SeekBar gLinesThickness;
    private SeekBar gLinesTransparency;
    private View gMainTab;
    private ImageButton gMainTabButton;
    private SeekBar gMaxBreaks;
    private SeekBar gMaxWins;
    private View gMiscTab;
    private ImageButton gMiscTabButton;
    private SeekBar gPredictionDrawPower;
    private View gVisualsTab;
    private ImageButton gVisualsTabButton;
    private Switch humanizedAngle;
    private Switch humanizedPower;
    private Button importSettings;
    private String lineThicknessRText;
    private String lineTransparencyRText;
    private View logoView;
    private View mainView;
    private Switch openVictoryBoxes;
    private Switch playGoldenShot;
    private String predictionDrawPowerRText;
    private Switch randomBetId;
    private Switch smartMatchLose;
    private Button tableMinus;
    private Button tableMinus2;
    private Button tableSum;
    private Button tableSum2;
    private Switch targetStripeYellowBall;
    private Switch useFullPowerAtBreak;
    private WindowManager windowManager;
    private Context context = null;
    private int maxTableSwipes = 20;

    public native void SettingFloatValue(int i, float f);

    public native void SettingIntValue(int i, int i2);

    public native void SettingLongValue(int i, long j);

    public native void SettingValue(int i, boolean z);

    public native boolean haqs();

    public static FloatLogo getInstance() {
        if (Instance == null) {
            Instance = new FloatLogo();
        }
        return Instance;
    }

    void exportConfig() {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496075806007756L), this.autoQueueLimit.getText());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496123050648012L), this.chosenTable.getText());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496174590255564L), this.chosenTable2.getText());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496230424830412L), this.gMaxWins.getProgress());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496264784568780L), this.gMaxBreaks.getProgress());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496307734241740L), this.gPredictionDrawPower.getProgress());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496393633587660L), this.gLinesThickness.getProgress());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496458058097100L), this.gLinesTransparency.getProgress());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496535367508428L), this.gAngleStepSize.getProgress());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496595497050572L), this.drawPrediction.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496659921560012L), this.enableAQ.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496698576265676L), this.drawShotState.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496758705807820L), this.adBlock.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496793065546188L), this.randomBetId.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496844605153740L), this.smartMatchLose.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496909029663180L), this.freezeLines.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871496960569270732L), this.findBestShot.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497016403845580L), this.useFullPowerAtBreak.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497102303191500L), this.humanizedPower.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497166727700940L), this.humanizedAngle.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497231152210380L), this.fastAutoPlayMode.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497304166654412L), this.fastAutoQueueMode.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497381476065740L), this.openVictoryBoxes.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497454490509772L), this.targetStripeYellowBall.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497553274757580L), this.choosePocketsManually.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497647764038092L), this.playGoldenShot.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497712188547532L), this.extraHumanization.isChecked());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497789497958860L), this.autoAction.getSelectedItemPosition());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497836742599116L), this.aqMode.getSelectedItemPosition());
            jSONObject.put(Deobfuscator$app$Release.getString(-4871497866807370188L), this.aqHumanizationMode.getSelectedItemPosition());
            jSONArray.put(jSONObject);
            ((ClipboardManager) this.context.getSystemService(Deobfuscator$app$Release.getString(-4871497948411748812L))).setPrimaryClip(ClipData.newPlainText(Deobfuscator$app$Release.getString(-4871497991361421772L), jSONArray.toString()));
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871498021426192844L) + th.getMessage());
        }
    }

    void tryImportSetting(JSONObject jSONObject, String str, TextView textView) {
        try {
            textView.setText(jSONObject.getString(str));
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871498055785931212L) + th.getMessage());
        }
    }

    void tryImportSetting(JSONObject jSONObject, String str, SeekBar seekBar) {
        try {
            int i = jSONObject.getInt(str);
            seekBar.setProgress(i);
            setValue(str, i);
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871498090145669580L) + th.getMessage());
        }
    }

    void tryImportSetting(JSONObject jSONObject, String str, Switch r5) {
        try {
            boolean z = jSONObject.getBoolean(str);
            r5.setChecked(z);
            setValue(str, z);
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871498124505407948L) + th.getMessage());
        }
    }

    void tryImportSetting(JSONObject jSONObject, String str, Spinner spinner) {
        try {
            int i = jSONObject.getInt(str);
            spinner.setSelection(i);
            setValue(str, i);
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871498158865146316L) + th.getMessage());
        }
    }

    void importConfig() {
        String string;
        try {
            JSONObject jSONObject = new JSONArray(((ClipboardManager) this.context.getSystemService(Deobfuscator$app$Release.getString(-4871498193224884684L))).getPrimaryClip().getItemAt(0).getText().toString()).getJSONObject(0);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498236174557644L), this.autoQueueLimit);
            SettingLongValueWrapper(MaterialCardViewHelper.DEFAULT_FADE_ANIM_DURATION, getLongValue(Deobfuscator$app$Release.getString(-4871498283419197900L), 0L));
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498330663838156L), this.chosenTable);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498382203445708L), this.chosenTable2);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498438038020556L), this.gMaxWins);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498472397758924L), this.gMaxBreaks);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498515347431884L), this.gPredictionDrawPower);
            SettingFloatValueWrapper(200, this.gPredictionDrawPower.getProgress());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498601246777804L), this.gLinesThickness);
            SettingFloatValueWrapper(ComposerKt.providerKey, this.gLinesThickness.getProgress());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498665671287244L), this.gLinesTransparency);
            SettingFloatValueWrapper(ComposerKt.compositionLocalMapKey, this.gLinesTransparency.getProgress());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498742980698572L), this.gAngleStepSize);
            SettingFloatValueWrapper(ComposerKt.providerValuesKey, this.gAngleStepSize.getProgress());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498803110240716L), this.drawPrediction);
            SettingValueWrapper(0, this.drawPrediction.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498867534750156L), this.enableAQ);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498906189455820L), this.drawShotState);
            SettingValueWrapper(1, this.drawShotState.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871498966318997964L), this.adBlock);
            SettingValueWrapper(3, this.adBlock.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499000678736332L), this.randomBetId);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499052218343884L), this.smartMatchLose);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499116642853324L), this.freezeLines);
            SettingValueWrapper(4, this.freezeLines.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499168182460876L), this.findBestShot);
            SettingValueWrapper(5, this.findBestShot.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499224017035724L), this.useFullPowerAtBreak);
            SettingValueWrapper(6, this.useFullPowerAtBreak.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499309916381644L), this.humanizedPower);
            SettingValueWrapper(7, this.humanizedPower.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499374340891084L), this.humanizedAngle);
            SettingValueWrapper(8, this.humanizedAngle.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499438765400524L), this.fastAutoPlayMode);
            SettingValueWrapper(11, this.fastAutoPlayMode.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499511779844556L), this.fastAutoQueueMode);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499589089255884L), this.openVictoryBoxes);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499662103699916L), this.targetStripeYellowBall);
            SettingValueWrapper(12, this.targetStripeYellowBall.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499760887947724L), this.choosePocketsManually);
            SettingValueWrapper(13, this.choosePocketsManually.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499855377228236L), this.playGoldenShot);
            SettingValueWrapper(15, this.playGoldenShot.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499919801737676L), this.extraHumanization);
            SettingValueWrapper(16, this.extraHumanization.isChecked());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871499997111149004L), this.autoAction);
            SettingIntValueWrapper(100, this.autoAction.getSelectedItemPosition());
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871500044355789260L), this.aqMode);
            tryImportSetting(jSONObject, Deobfuscator$app$Release.getString(-4871500074420560332L), this.aqHumanizationMode);
            if (this.aqHumanizationMode.getSelectedItemPosition() == 1) {
                string = Deobfuscator$app$Release.getString(-4871500156024938956L);
            } else {
                string = Deobfuscator$app$Release.getString(-4871500276284023244L);
            }
            ((TextView) this.floatingView.findViewById(R.id.MaxBreaksText)).setText(String.format(string, Integer.valueOf(this.gMaxBreaks.getProgress())));
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871500392248140236L) + th.getMessage());
        }
    }

    long getCoinsLimit() {
        try {
            return Math.max(getLongValue(Deobfuscator$app$Release.getString(-4871500426607878604L), 0L) * 1000000, 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    int getChosenTable() {
        return Integer.parseInt(this.chosenTable.getText().toString());
    }

    int getChosenTable2() {
        return Integer.parseInt(this.chosenTable2.getText().toString());
    }

    int getMaxWins() {
        return this.gMaxWins.getProgress();
    }

    int getMaxBreaks() {
        return this.gMaxBreaks.getProgress();
    }

    boolean isAQEnabled() {
        return this.enableAQ.isChecked();
    }

    boolean isAQFastModeEnabled() {
        return this.fastAutoQueueMode.isChecked();
    }

    boolean shouldOpenVictoryBoxes() {
        return this.openVictoryBoxes.isChecked();
    }

    boolean chooseRandomTable() {
        return this.randomBetId.isChecked();
    }

    boolean smartMatchLose() {
        return this.smartMatchLose.isChecked();
    }

    int getAQMode() {
        return this.aqMode.getSelectedItemPosition();
    }

    int getAQHumanizationMode() {
        return this.aqHumanizationMode.getSelectedItemPosition();
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }

    private void load() {
        String string;
        EditText editText = (EditText) this.floatingView.findViewById(R.id.AutoQueueLimit);
        this.autoQueueLimit = editText;
        editText.addTextChangedListener(new TextWatcher() { // from class: com.easyvictory.cheto.FloatLogo.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                long j;
                try {
                    j = Long.valueOf(String.valueOf(editable)).longValue();
                } catch (Throwable unused) {
                    j = 0;
                }
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493082213802444L), j);
                FloatLogo.this.SettingLongValueWrapper(MaterialCardViewHelper.DEFAULT_FADE_ANIM_DURATION, j);
            }
        });
        long j = 0;
        try {
            j = getLongValue(Deobfuscator$app$Release.getString(-4871500473852518860L), 0L);
            this.autoQueueLimit.setText(String.valueOf(j));
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
        SettingLongValueWrapper(MaterialCardViewHelper.DEFAULT_FADE_ANIM_DURATION, j);
        this.closeButton = (TextView) this.floatingView.findViewById(R.id.closeBtn);
        this.gMainTabButton = (ImageButton) this.floatingView.findViewById(R.id.AutoAimTabButton);
        this.gVisualsTabButton = (ImageButton) this.floatingView.findViewById(R.id.VisualsTabButton);
        this.gMiscTabButton = (ImageButton) this.floatingView.findViewById(R.id.MiscTabButton);
        this.chosenTable = (TextView) this.floatingView.findViewById(R.id.ChosenTableId);
        this.chosenTable2 = (TextView) this.floatingView.findViewById(R.id.ChosenTableId2);
        this.gMaxWins = (SeekBar) this.floatingView.findViewById(R.id.MaxWins);
        this.gMaxBreaks = (SeekBar) this.floatingView.findViewById(R.id.MaxBreaks);
        this.tableMinus = (Button) this.floatingView.findViewById(R.id.tableMinusId);
        this.tableSum = (Button) this.floatingView.findViewById(R.id.tableSumId);
        this.tableMinus.setText(Deobfuscator$app$Release.getString(-4871500521097159116L));
        this.tableSum.setText(Deobfuscator$app$Release.getString(-4871500533982061004L));
        this.tableMinus2 = (Button) this.floatingView.findViewById(R.id.tableMinusId2);
        this.tableSum2 = (Button) this.floatingView.findViewById(R.id.tableSumId2);
        this.aqHumanizationMode = (Spinner) this.floatingView.findViewById(R.id.AQHumanizationMode);
        this.tableMinus2.setText(Deobfuscator$app$Release.getString(-4871500546866962892L));
        this.tableSum2.setText(Deobfuscator$app$Release.getString(-4871500559751864780L));
        this.tableMinus.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                try {
                    i = Integer.parseInt(FloatLogo.this.chosenTable.getText().toString());
                } catch (Throwable th2) {
                    Logger.e(th2.getMessage());
                    i = 0;
                }
                if (i > 0) {
                    int i2 = i - 1;
                    FloatLogo.this.chosenTable.setText(String.valueOf(i2));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493687804191180L), i2);
                }
            }
        });
        this.tableSum.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                try {
                    i = Integer.parseInt(FloatLogo.this.chosenTable.getText().toString());
                } catch (Throwable th2) {
                    Logger.e(th2.getMessage());
                    i = 0;
                }
                if (i < FloatLogo.this.maxTableSwipes) {
                    int i2 = i + 1;
                    FloatLogo.this.chosenTable.setText(String.valueOf(i2));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494495258042828L), i2);
                }
            }
        });
        this.tableMinus2.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                try {
                    i = Integer.parseInt(FloatLogo.this.chosenTable2.getText().toString());
                } catch (Throwable th2) {
                    Logger.e(th2.getMessage());
                    i = 0;
                }
                if (i > 0) {
                    int i2 = i - 1;
                    FloatLogo.this.chosenTable2.setText(String.valueOf(i2));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495534640128460L), i2);
                }
            }
        });
        this.tableSum2.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                try {
                    i = Integer.parseInt(FloatLogo.this.chosenTable2.getText().toString());
                } catch (Throwable th2) {
                    Logger.e(th2.getMessage());
                    i = 0;
                }
                if (i < FloatLogo.this.maxTableSwipes) {
                    int i2 = i + 1;
                    FloatLogo.this.chosenTable2.setText(String.valueOf(i2));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495590474703308L), i2);
                }
            }
        });
        this.importSettings = (Button) this.floatingView.findViewById(R.id.ImportSettings);
        this.exportSettings = (Button) this.floatingView.findViewById(R.id.ExportSettings);
        this.importSettings.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FloatLogo.this.importConfig();
            }
        });
        this.exportSettings.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FloatLogo.this.exportConfig();
            }
        });
        this.gMainTab = this.floatingView.findViewById(R.id.AutoAimTab);
        this.gVisualsTab = this.floatingView.findViewById(R.id.VisualsTab);
        this.gMiscTab = this.floatingView.findViewById(R.id.MiscTab);
        this.gPredictionDrawPower = (SeekBar) this.floatingView.findViewById(R.id.PredictionDrawPower);
        this.gLinesThickness = (SeekBar) this.floatingView.findViewById(R.id.LineThickness);
        this.gLinesTransparency = (SeekBar) this.floatingView.findViewById(R.id.LineTransparency);
        this.gAngleStepSize = (SeekBar) this.floatingView.findViewById(R.id.AngleStepSize);
        final TextView textView = (TextView) this.floatingView.findViewById(R.id.PredictionDrawPowerText);
        final TextView textView2 = (TextView) this.floatingView.findViewById(R.id.LineThicknessText);
        final TextView textView3 = (TextView) this.floatingView.findViewById(R.id.LineTransparencyText);
        final TextView textView4 = (TextView) this.floatingView.findViewById(R.id.AngleStepSizeText);
        final TextView textView5 = (TextView) this.floatingView.findViewById(R.id.MaxWinsText);
        final TextView textView6 = (TextView) this.floatingView.findViewById(R.id.MaxBreaksText);
        int value = (int) getValue(Deobfuscator$app$Release.getString(-4871500572636766668L), this.gPredictionDrawPower.getProgress());
        int value2 = (int) getValue(Deobfuscator$app$Release.getString(-4871500658536112588L), this.gLinesThickness.getProgress());
        int value3 = (int) getValue(Deobfuscator$app$Release.getString(-4871500722960622028L), this.gLinesTransparency.getProgress());
        int value4 = (int) getValue(Deobfuscator$app$Release.getString(-4871500800270033356L), this.gAngleStepSize.getProgress());
        int value5 = (int) getValue(Deobfuscator$app$Release.getString(-4871500860399575500L), this.gMaxWins.getProgress());
        int value6 = (int) getValue(Deobfuscator$app$Release.getString(-4871500894759313868L), this.gMaxBreaks.getProgress());
        try {
            textView.setText(String.format(this.predictionDrawPowerRText, Integer.valueOf(value)));
            textView2.setText(String.format(this.lineThicknessRText, Integer.valueOf(value2)));
            textView3.setText(String.format(this.lineTransparencyRText, Integer.valueOf(value3)));
            textView4.setText(String.format(this.angleStepSizeRText, Integer.valueOf(value4)));
            textView5.setText(String.format(Deobfuscator$app$Release.getString(-4871500937708986828L), Integer.valueOf(value5)));
            if (this.aqHumanizationMode.getSelectedItemPosition() == 1) {
                string = Deobfuscator$app$Release.getString(-4871501053673103820L);
            } else {
                string = Deobfuscator$app$Release.getString(-4871501173932188108L);
            }
            textView6.setText(String.format(string, Integer.valueOf(value6)));
        } catch (Throwable th2) {
            Logger.e(th2.getMessage());
        }
        this.gMaxWins.incrementProgressBy(1);
        this.gMaxWins.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.8
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (FloatLogo.this.smartMatchLose.isChecked()) {
                    seekBar.setProgress(0);
                    i = 0;
                }
                textView5.setText(String.format(Deobfuscator$app$Release.getString(-4871495646309278156L), Integer.valueOf(i)));
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495762273395148L), i);
            }
        });
        this.gMaxBreaks.incrementProgressBy(1);
        this.gMaxBreaks.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.9
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                String string2;
                if (FloatLogo.this.aqHumanizationMode.getSelectedItemPosition() == 1) {
                    string2 = Deobfuscator$app$Release.getString(-4871495796633133516L);
                } else {
                    string2 = Deobfuscator$app$Release.getString(-4871495916892217804L);
                }
                textView6.setText(String.format(string2, Integer.valueOf(i)));
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871496032856334796L), i);
            }
        });
        this.gPredictionDrawPower.incrementProgressBy(1);
        this.gPredictionDrawPower.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.10
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                textView.setText(String.format(FloatLogo.this.predictionDrawPowerRText, Integer.valueOf(i)));
                float f = i;
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493129458442700L), f);
                FloatLogo.this.SettingFloatValueWrapper(200, f);
            }
        });
        this.gLinesThickness.incrementProgressBy(1);
        this.gLinesThickness.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.11
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                textView2.setText(String.format(FloatLogo.this.lineThicknessRText, Integer.valueOf(i)));
                float f = i;
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493215357788620L), f);
                FloatLogo.this.SettingFloatValueWrapper(ComposerKt.providerKey, f);
            }
        });
        this.gLinesTransparency.incrementProgressBy(1);
        this.gLinesTransparency.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.12
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                textView3.setText(String.format(FloatLogo.this.lineTransparencyRText, Integer.valueOf(i)));
                float f = i;
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493279782298060L), f);
                FloatLogo.this.SettingFloatValueWrapper(ComposerKt.compositionLocalMapKey, f);
            }
        });
        this.gAngleStepSize.incrementProgressBy(1);
        this.gAngleStepSize.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.13
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z && i < 1) {
                    seekBar.setProgress(1);
                    i = 1;
                }
                textView4.setText(String.format(FloatLogo.this.angleStepSizeRText, Integer.valueOf(i)));
                float f = i;
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493357091709388L), f);
                FloatLogo.this.SettingFloatValueWrapper(ComposerKt.providerValuesKey, f);
            }
        });
        this.autoAction = (Spinner) this.floatingView.findViewById(R.id.AutoAction);
        this.aqMode = (Spinner) this.floatingView.findViewById(R.id.AQMode);
        this.fastAutoPlayMode = (Switch) this.floatingView.findViewById(R.id.AutoPlayMode);
        this.fastAutoQueueMode = (Switch) this.floatingView.findViewById(R.id.FastAQ);
        this.openVictoryBoxes = (Switch) this.floatingView.findViewById(R.id.OpenVictoryBoxes);
        this.targetStripeYellowBall = (Switch) this.floatingView.findViewById(R.id.EightBallPoolTarget);
        this.choosePocketsManually = (Switch) this.floatingView.findViewById(R.id.PocketNominationMode);
        this.playGoldenShot = (Switch) this.floatingView.findViewById(R.id.PlayGoldenShot);
        this.extraHumanization = (Switch) this.floatingView.findViewById(R.id.ExtraHumanization);
        this.findBestShot = (Switch) this.floatingView.findViewById(R.id.FindBestShot);
        this.useFullPowerAtBreak = (Switch) this.floatingView.findViewById(R.id.UseFullPowerAtBreak);
        this.humanizedPower = (Switch) this.floatingView.findViewById(R.id.HumanizedPower);
        this.humanizedAngle = (Switch) this.floatingView.findViewById(R.id.HumanizedAngle);
        this.adBlock = (Switch) this.floatingView.findViewById(R.id.AdBlock);
        this.randomBetId = (Switch) this.floatingView.findViewById(R.id.RandomBetId);
        this.smartMatchLose = (Switch) this.floatingView.findViewById(R.id.SmartMatchLose);
        this.drawPrediction = (Switch) this.floatingView.findViewById(R.id.DrawPrediction);
        this.drawShotState = (Switch) this.floatingView.findViewById(R.id.DrawShotState);
        this.freezeLines = (Switch) this.floatingView.findViewById(R.id.FreezeLines);
        this.enableAQ = (Switch) this.floatingView.findViewById(R.id.EnableAQ);
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FloatLogo.this.mainView.setVisibility(8);
                FloatLogo.this.logoView.setVisibility(0);
            }
        });
        this.gMainTabButton.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FloatLogo.this.gMainTab.setVisibility(0);
                FloatLogo.this.gVisualsTab.setVisibility(8);
                FloatLogo.this.gMiscTab.setVisibility(8);
            }
        });
        this.gVisualsTabButton.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FloatLogo.this.gMainTab.setVisibility(8);
                FloatLogo.this.gVisualsTab.setVisibility(0);
                FloatLogo.this.gMiscTab.setVisibility(8);
            }
        });
        this.gMiscTabButton.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FloatLogo.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FloatLogo.this.gMainTab.setVisibility(8);
                FloatLogo.this.gVisualsTab.setVisibility(8);
                FloatLogo.this.gMiscTab.setVisibility(0);
            }
        });
        this.drawPrediction.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.18
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493417221251532L), FloatLogo.this.drawPrediction.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(0, floatLogo.drawPrediction.isChecked());
            }
        });
        this.enableAQ.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.19
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (!FloatLogo.this.haqs()) {
                    FloatLogo.this.enableAQ.setText(Deobfuscator$app$Release.getString(-4871493481645760972L));
                } else {
                    FloatLogo.this.enableAQ.setText(Deobfuscator$app$Release.getString(-4871493619084714444L));
                }
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493649149485516L), FloatLogo.this.enableAQ.isChecked());
            }
        });
        this.drawShotState.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.20
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493739343798732L), FloatLogo.this.drawShotState.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(1, floatLogo.drawShotState.isChecked());
            }
        });
        this.adBlock.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.21
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493799473340876L), FloatLogo.this.adBlock.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(3, floatLogo.adBlock.isChecked());
            }
        });
        this.randomBetId.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.22
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493833833079244L), FloatLogo.this.randomBetId.isChecked());
            }
        });
        this.smartMatchLose.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.23
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871493885372686796L), FloatLogo.this.smartMatchLose.isChecked());
                if (FloatLogo.this.smartMatchLose.isChecked()) {
                    FloatLogo.this.gMaxWins.setProgress(0);
                    textView5.setText(String.format(Deobfuscator$app$Release.getString(-4871493949797196236L), 0));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494065761313228L), 0);
                }
            }
        });
        this.freezeLines.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.24
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494100121051596L), FloatLogo.this.freezeLines.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(4, floatLogo.freezeLines.isChecked());
            }
        });
        this.findBestShot.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.25
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494151660659148L), FloatLogo.this.findBestShot.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(5, floatLogo.findBestShot.isChecked());
            }
        });
        this.useFullPowerAtBreak.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.26
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494207495233996L), FloatLogo.this.useFullPowerAtBreak.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(6, floatLogo.useFullPowerAtBreak.isChecked());
            }
        });
        this.humanizedPower.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.27
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494293394579916L), FloatLogo.this.humanizedPower.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(7, floatLogo.humanizedPower.isChecked());
            }
        });
        this.humanizedAngle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.28
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494357819089356L), FloatLogo.this.humanizedAngle.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(8, floatLogo.humanizedAngle.isChecked());
            }
        });
        this.fastAutoPlayMode.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.29
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494422243598796L), FloatLogo.this.fastAutoPlayMode.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(11, floatLogo.fastAutoPlayMode.isChecked());
            }
        });
        this.fastAutoQueueMode.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.30
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494546797650380L), FloatLogo.this.fastAutoQueueMode.isChecked());
            }
        });
        this.openVictoryBoxes.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.31
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494624107061708L), FloatLogo.this.openVictoryBoxes.isChecked());
            }
        });
        this.targetStripeYellowBall.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.32
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494697121505740L), FloatLogo.this.targetStripeYellowBall.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(12, floatLogo.targetStripeYellowBall.isChecked());
            }
        });
        this.choosePocketsManually.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.33
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494795905753548L), FloatLogo.this.choosePocketsManually.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(13, floatLogo.choosePocketsManually.isChecked());
            }
        });
        this.playGoldenShot.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.34
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494890395034060L), FloatLogo.this.playGoldenShot.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(15, floatLogo.playGoldenShot.isChecked());
            }
        });
        this.extraHumanization.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.35
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871494954819543500L), FloatLogo.this.extraHumanization.isChecked());
                FloatLogo floatLogo = FloatLogo.this;
                floatLogo.SettingValueWrapper(16, floatLogo.extraHumanization.isChecked());
            }
        });
        this.autoAction.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.easyvictory.cheto.FloatLogo.36
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j2) {
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495032128954828L), FloatLogo.this.autoAction.getSelectedItemPosition());
                FloatLogo.this.SettingIntValueWrapper(100, i);
                if (i != 0) {
                    AutoController.getInstance().floatingView.setVisibility(0);
                } else {
                    AutoController.getInstance().floatingView.setVisibility(8);
                }
            }
        });
        this.aqMode.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.easyvictory.cheto.FloatLogo.37
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j2) {
                int i2;
                int selectedItemPosition = FloatLogo.this.aqMode.getSelectedItemPosition();
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495079373595084L), selectedItemPosition);
                if (selectedItemPosition == 0) {
                    FloatLogo.this.maxTableSwipes = 20;
                } else {
                    FloatLogo.this.maxTableSwipes = 2;
                }
                int i3 = 0;
                try {
                    i2 = Integer.parseInt(FloatLogo.this.chosenTable.getText().toString());
                } catch (Throwable th3) {
                    Logger.e(th3.getMessage());
                    i2 = 0;
                }
                if (i2 > FloatLogo.this.maxTableSwipes) {
                    int i4 = FloatLogo.this.maxTableSwipes;
                    FloatLogo.this.chosenTable.setText(String.valueOf(i4));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495109438366156L), i4);
                }
                try {
                    i3 = Integer.parseInt(FloatLogo.this.chosenTable2.getText().toString());
                } catch (Throwable th4) {
                    Logger.e(th4.getMessage());
                }
                if (i3 > FloatLogo.this.maxTableSwipes) {
                    int i5 = FloatLogo.this.maxTableSwipes;
                    FloatLogo.this.chosenTable2.setText(String.valueOf(i5));
                    FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495160977973708L), i5);
                }
            }
        });
        this.aqHumanizationMode.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.easyvictory.cheto.FloatLogo.38
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j2) {
                String string2;
                FloatLogo.this.setValue(Deobfuscator$app$Release.getString(-4871495216812548556L), FloatLogo.this.aqHumanizationMode.getSelectedItemPosition());
                if (FloatLogo.this.aqHumanizationMode.getSelectedItemPosition() == 1) {
                    string2 = Deobfuscator$app$Release.getString(-4871495298416927180L);
                } else {
                    string2 = Deobfuscator$app$Release.getString(-4871495418676011468L);
                }
                ((TextView) FloatLogo.this.floatingView.findViewById(R.id.MaxBreaksText)).setText(String.format(string2, Integer.valueOf(FloatLogo.this.gMaxBreaks.getProgress())));
            }
        });
        this.chosenTable.setText(String.valueOf(getIntValue(Deobfuscator$app$Release.getString(-4871501289896305100L))));
        this.chosenTable2.setText(String.valueOf(getIntValue(Deobfuscator$app$Release.getString(-4871501341435912652L))));
        this.enableAQ.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501397270487500L), false));
        this.drawPrediction.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501435925193164L), true));
        this.drawShotState.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501500349702604L)));
        this.adBlock.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501560479244748L)));
        this.randomBetId.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501594838983116L)));
        this.smartMatchLose.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501646378590668L)));
        this.freezeLines.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501710803100108L)));
        this.autoAction.setSelection(getIntValue(Deobfuscator$app$Release.getString(-4871501762342707660L)));
        this.aqMode.setSelection(getIntValue(Deobfuscator$app$Release.getString(-4871501809587347916L)));
        this.aqHumanizationMode.setSelection(getIntValue(Deobfuscator$app$Release.getString(-4871501839652118988L)));
        if (this.aqMode.getSelectedItemPosition() == 0) {
            this.maxTableSwipes = 20;
        } else {
            this.maxTableSwipes = 2;
        }
        this.fastAutoPlayMode.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501921256497612L)));
        this.fastAutoQueueMode.setChecked(getValue(Deobfuscator$app$Release.getString(-4871501994270941644L)));
        this.openVictoryBoxes.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502071580352972L)));
        this.targetStripeYellowBall.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502144594797004L)));
        this.choosePocketsManually.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502243379044812L)));
        this.playGoldenShot.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502337868325324L)));
        this.extraHumanization.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502402292834764L)));
        this.findBestShot.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502479602246092L)));
        this.useFullPowerAtBreak.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502535436820940L)));
        this.humanizedPower.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502621336166860L)));
        this.humanizedAngle.setChecked(getValue(Deobfuscator$app$Release.getString(-4871502685760676300L)));
        SettingValueWrapper(0, this.drawPrediction.isChecked());
        SettingValueWrapper(1, this.drawShotState.isChecked());
        SettingValueWrapper(3, this.adBlock.isChecked());
        SettingValueWrapper(4, this.freezeLines.isChecked());
        SettingValueWrapper(5, this.findBestShot.isChecked());
        SettingValueWrapper(6, this.useFullPowerAtBreak.isChecked());
        SettingValueWrapper(7, this.humanizedPower.isChecked());
        SettingValueWrapper(8, this.humanizedAngle.isChecked());
        SettingValueWrapper(11, this.fastAutoPlayMode.isChecked());
        SettingValueWrapper(12, this.targetStripeYellowBall.isChecked());
        SettingValueWrapper(13, this.choosePocketsManually.isChecked());
        SettingValueWrapper(15, this.playGoldenShot.isChecked());
        SettingValueWrapper(16, this.extraHumanization.isChecked());
        SettingIntValueWrapper(100, this.autoAction.getSelectedItemPosition());
        this.gPredictionDrawPower.setProgress(value);
        this.gLinesThickness.setProgress(value2);
        this.gLinesTransparency.setProgress(value3);
        this.gAngleStepSize.setProgress(value4);
        this.gMaxWins.setProgress(value5);
        this.gMaxBreaks.setProgress(value6);
        SettingFloatValueWrapper(200, this.gPredictionDrawPower.getProgress());
        SettingFloatValueWrapper(ComposerKt.providerKey, this.gLinesThickness.getProgress());
        SettingFloatValueWrapper(ComposerKt.compositionLocalMapKey, this.gLinesTransparency.getProgress());
        SettingFloatValueWrapper(ComposerKt.providerValuesKey, this.gAngleStepSize.getProgress());
    }

    public void onCreate(View view, String str, String str2, String str3, String str4) {
        this.floatingView = view;
        this.windowManager = (WindowManager) this.context.getSystemService(Deobfuscator$app$Release.getString(-4871502750185185740L));
        this.predictionDrawPowerRText = str;
        this.lineThicknessRText = str2;
        this.lineTransparencyRText = str3;
        this.angleStepSizeRText = str4;
        createOver();
        this.logoView = view.findViewById(R.id.relativeLayoutParent);
        View findViewById = view.findViewById(R.id.MainView);
        this.mainView = findViewById;
        findViewById.setVisibility(8);
        this.logoView.setVisibility(0);
        load();
    }

    public static Bitmap loadBitmapFromView(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    void createOver() {
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, (int) (Utils.getScreenWidth(this.context) / 2.0f), 0, PointerIconCompat.TYPE_HAND, 131072 | 8388608 | 33554696, 1);
        try {
            Record.setFakeRecorderWindowLayoutParams(layoutParams);
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
        try {
            this.windowManager.addView(this.floatingView, layoutParams);
        } catch (Throwable th2) {
            Logger.e(th2.getMessage());
        }
        final GestureDetector gestureDetector = new GestureDetector(this.context, new SingleTapConfirm());
        ((Switch) this.floatingView.findViewById(R.id.EnableKeyboard)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.FloatLogo.39
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    layoutParams.flags = 32;
                } else {
                    layoutParams.flags = 8;
                }
                try {
                    FloatLogo.this.windowManager.updateViewLayout(FloatLogo.this.floatingView, layoutParams);
                } catch (Throwable unused) {
                }
            }
        });
        this.floatingView.findViewById(R.id.relativeLayoutParent).setOnTouchListener(new View.OnTouchListener() { // from class: com.easyvictory.cheto.FloatLogo.40
            private float initialTouchX;
            private float initialTouchY;
            private int initialX;
            private int initialY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (gestureDetector.onTouchEvent(motionEvent)) {
                    FloatLogo.this.mainView.setVisibility(0);
                    FloatLogo.this.logoView.setVisibility(8);
                    return true;
                }
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.initialX = layoutParams.x;
                    this.initialY = layoutParams.y;
                    this.initialTouchX = motionEvent.getRawX();
                    this.initialTouchY = motionEvent.getRawY();
                    return true;
                }
                if (action == 1) {
                    Point screenSize = Utils.getScreenSize(FloatLogo.this.context);
                    int i = (int) (screenSize.x / 2.0f);
                    int i2 = (int) (screenSize.y / 2.0f);
                    if (layoutParams.y < i2 - view.getHeight() && layoutParams.y > (-(i2 - view.getHeight()))) {
                        if (layoutParams.x > 0) {
                            layoutParams.x = i;
                        } else {
                            layoutParams.x = -i;
                        }
                        FloatLogo.this.windowManager.updateViewLayout(FloatLogo.this.floatingView, layoutParams);
                        return true;
                    }
                } else if (action == 2) {
                    layoutParams.x = this.initialX + ((int) (motionEvent.getRawX() - this.initialTouchX));
                    layoutParams.y = this.initialY + ((int) (motionEvent.getRawY() - this.initialTouchY));
                    FloatLogo.this.windowManager.updateViewLayout(FloatLogo.this.floatingView, layoutParams);
                    return true;
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(String str, boolean z) {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871502780249956812L), 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(String str, int i) {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871502818904662476L), 0).edit();
        edit.putInt(str, i);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(String str, float f) {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871502857559368140L), 0).edit();
        edit.putFloat(str, f);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(String str, long j) {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871502896214073804L), 0).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    private boolean getValue(String str) {
        return getValue(str, false);
    }

    private boolean getValue(String str, boolean z) {
        return this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871502934868779468L), 0).getBoolean(str, z);
    }

    private float getValue(String str, float f) {
        return this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871502973523485132L), 0).getFloat(str, f);
    }

    private int getIntValue(String str) {
        return this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871503012178190796L), 0).getInt(str, 0);
    }

    private int getIntValue(String str, int i) {
        return this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871503050832896460L), 0).getInt(str, i);
    }

    private long getLongValue(String str, long j) {
        return this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871503089487602124L), 0).getLong(str, j);
    }

    boolean SettingValueWrapper(int i, boolean z) {
        try {
            SettingValue(i, z);
            return true;
        } catch (Throwable unused) {
            System.exit(0);
            return false;
        }
    }

    boolean SettingIntValueWrapper(int i, int i2) {
        try {
            SettingIntValue(i, i2);
            return true;
        } catch (Throwable unused) {
            System.exit(0);
            return false;
        }
    }

    boolean SettingFloatValueWrapper(int i, float f) {
        try {
            SettingFloatValue(i, f);
            return true;
        } catch (Throwable unused) {
            System.exit(0);
            return false;
        }
    }

    boolean SettingLongValueWrapper(int i, long j) {
        try {
            SettingLongValue(i, j);
            return true;
        } catch (Throwable unused) {
            System.exit(0);
            return false;
        }
    }
}
