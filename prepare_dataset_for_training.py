from datasets import load_dataset

load dataset
indir='fxhash_008'
dataset = load_dataset('imagefolder',data_dir=indir,split='train')
dataset = dataset.remove_columns('label')
text_df = pd.read_csv(f'{indir}/text.csv')
all_text = list(text_df.text)
dataset = dataset.add_column('text', all_text)
dataset.save_to_disk(dataset_path=f'{indir}_diffusers')
